// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int? ?? 0,
      lastPage: json['last_page'] as int? ?? 0,
      currentPage: json['current_page'] as int? ?? 0,
      perPage: json['per_page'] as int? ?? 0,
      prev: json['prev'],
      next: json['next'],
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'prev': instance.prev,
      'next': instance.next,
    };
