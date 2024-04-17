import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  final int total;
  final int lastPage;
  final int currentPage;
  final int perPage;
  final dynamic prev;
  final dynamic next;

  const Meta({
    this.total = 0,
    this.lastPage = 0,
    this.currentPage = 0,
    this.perPage = 0,
    this.prev,
    this.next,
  });

  Meta copyWith({
    int? total,
    int? currentPage,
    int? lastPage,
    int? perPage,
    dynamic prev,
    dynamic next,
  }) =>
      Meta(
        total: total ?? this.total,
        currentPage: currentPage ?? this.currentPage,
        lastPage: lastPage ?? this.lastPage,
        perPage: perPage ?? this.perPage,
        prev: prev ?? this.prev,
        next: next ?? this.next,
      );

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
