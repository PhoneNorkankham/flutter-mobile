import 'package:drift/drift.dart';
import 'package:keepup/src/core/local/app_database.dart';
import 'package:keepup/src/core/local/table/categories.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  final AppDatabase db;

  CategoryDao(this.db) : super(db);

  Future<int> insertOnConflictUpdate(Category category) =>
      into(categories).insertOnConflictUpdate(category);

  Future<void> insertAllOnConflictUpdate(List<Category> entities) =>
      batch((batch) => batch.insertAllOnConflictUpdate(categories, entities));

  Future<List<Category>> getCategories() =>
      (select(categories)..orderBy([(u) => OrderingTerm(expression: u.createdAt)])).get();

  Stream<List<Category>> watchCategories() =>
      (select(categories)..orderBy([(u) => OrderingTerm(expression: u.createdAt)])).watch();

  Future<Category?> getCategory(String categoryId) =>
      (select(categories)..where((tbl) => tbl.id.equals(categoryId)))
          .get()
          .then((value) => value.firstOrNull);

  Future<int> deleteCategory(String categoryId) =>
      (delete(categories)..where((tbl) => tbl.id.equals(categoryId))).go();

  Future<int> deleteAll() => delete(categories).go();
}
