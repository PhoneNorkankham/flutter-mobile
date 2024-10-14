import 'package:keepup/src/core/converters/model_converter.dart';
import 'package:keepup/src/core/local/app_database.dart';

extension GroupExtensions on Group {
  List<String> get contactIds => contacts.map(const ModelConverter<String>().fromJson).toList();
}
