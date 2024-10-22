import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
@HiveType(typeId: 3)
class UserData with _$UserData {
  const factory UserData({
    @HiveField(0, defaultValue: '') @Default('') String id,
    @HiveField(1, defaultValue: '') @Default('') String name,
    @HiveField(2, defaultValue: '') @Default('') String avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
