// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deprecated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatedSEDeprecatedImpl _$$CreatedSEDeprecatedImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatedSEDeprecatedImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreatedSEDeprecatedImplToJson(
        _$CreatedSEDeprecatedImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$TitleChangedSEDeprecatedImpl _$$TitleChangedSEDeprecatedImplFromJson(
        Map<String, dynamic> json) =>
    _$TitleChangedSEDeprecatedImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      json['title'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TitleChangedSEDeprecatedImplToJson(
        _$TitleChangedSEDeprecatedImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_$DescriptionChangedSEDeprecatedImpl
    _$$DescriptionChangedSEDeprecatedImplFromJson(Map<String, dynamic> json) =>
        _$DescriptionChangedSEDeprecatedImpl(
          ID.fromJson(json['parent']),
          DateTime.parse(json['at'] as String),
          json['description'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$DescriptionChangedSEDeprecatedImplToJson(
        _$DescriptionChangedSEDeprecatedImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$MarkedAsThoughtSEDeprecatedImpl _$$MarkedAsThoughtSEDeprecatedImplFromJson(
        Map<String, dynamic> json) =>
    _$MarkedAsThoughtSEDeprecatedImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkedAsThoughtSEDeprecatedImplToJson(
        _$MarkedAsThoughtSEDeprecatedImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$CategoryChangedSEDeprecatedImpl _$$CategoryChangedSEDeprecatedImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryChangedSEDeprecatedImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      json['category'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CategoryChangedSEDeprecatedImplToJson(
        _$CategoryChangedSEDeprecatedImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'category': instance.category,
      'runtimeType': instance.$type,
    };

_$StatusChangedSEDeprecatedImpl _$$StatusChangedSEDeprecatedImplFromJson(
        Map<String, dynamic> json) =>
    _$StatusChangedSEDeprecatedImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $enumDecode(_$AggregateStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusChangedSEDeprecatedImplToJson(
        _$StatusChangedSEDeprecatedImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'status': _$AggregateStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$AggregateStatusEnumMap = {
  AggregateStatus.IN_PROGRESS: 'IN_PROGRESS',
  AggregateStatus.TO_DO: 'TO_DO',
  AggregateStatus.DONE: 'DONE',
};
