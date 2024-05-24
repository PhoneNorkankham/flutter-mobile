import 'package:drift/drift.dart';
import 'package:keepup/src/enums/interaction_type.dart';

class Interactions extends Table {
  TextColumn get id => text()();

  @JsonKey('contact_id')
  TextColumn get contactId => text().named('contact_id').withDefault(const Constant(''))();

  @JsonKey('date_completed')
  DateTimeColumn get dateCompleted => dateTime().named('date_completed').nullable()();

  TextColumn get method =>
      textEnum<InteractionMethodType>().withDefault(Constant(InteractionMethodType.KeepUp.name))();

  @override
  Set<Column> get primaryKey => {id};
}
