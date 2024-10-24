import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:keepup/src/core/converters/list_converter.dart';
import 'package:keepup/src/core/local/dao/category_dao.dart';
import 'package:keepup/src/core/local/dao/contact_dao.dart';
import 'package:keepup/src/core/local/dao/group_dao.dart';
import 'package:keepup/src/core/local/dao/interaction_dao.dart';
import 'package:keepup/src/core/local/table/categories.dart';
import 'package:keepup/src/core/local/table/contacts.dart';
import 'package:keepup/src/core/local/table/groups.dart';
import 'package:keepup/src/core/local/table/interactions.dart';
import 'package:keepup/src/enums/frequency_interval_type.dart';
import 'package:keepup/src/enums/interaction_type.dart';
import 'package:keepup/src/utils/app_constants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [Groups, Contacts, Interactions, Categories],
  daos: [GroupDao, ContactDao, InteractionDao, CategoryDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> deleteAll() async {
    await groupDao.deleteAll();
    await contactDao.deleteAll();
    await interactionDao.deleteAll();
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, '${AppConstants.appDatabaseName}_202410110000.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sand boxing.
    final cacheBase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cacheBase;

    return NativeDatabase.createInBackground(file);
  });
}
