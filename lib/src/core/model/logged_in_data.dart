import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:keepup/src/core/model/user_data.dart';

part 'logged_in_data.freezed.dart';
part 'logged_in_data.g.dart';

@freezed
@HiveType(typeId: 1)
class LoggedInData with _$LoggedInData {
  const factory LoggedInData({
    @HiveField(0, defaultValue: false) @Default(false) bool isLoggedIn,
    @HiveField(1, defaultValue: false) @Default(false) bool isExpired,
    @HiveField(2, defaultValue: false) @Default(false) bool isAnonymous,
    @HiveField(3) UserData? userData,
  }) = _LoggedInData;

  factory LoggedInData.fromJson(Map<String, dynamic> json) => _$LoggedInDataFromJson(json);
}
