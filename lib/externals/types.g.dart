// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatedSEImpl _$$CreatedSEImplFromJson(Map<String, dynamic> json) =>
    _$CreatedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreatedSEImplToJson(_$CreatedSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$TitleChangedSEImpl _$$TitleChangedSEImplFromJson(Map<String, dynamic> json) =>
    _$TitleChangedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      json['title'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TitleChangedSEImplToJson(
        _$TitleChangedSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_$DescriptionChangedSEImpl _$$DescriptionChangedSEImplFromJson(
        Map<String, dynamic> json) =>
    _$DescriptionChangedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DescriptionChangedSEImplToJson(
        _$DescriptionChangedSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$StatusChangedSEImpl _$$StatusChangedSEImplFromJson(
        Map<String, dynamic> json) =>
    _$StatusChangedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $enumDecode(_$ToDoStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusChangedSEImplToJson(
        _$StatusChangedSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'status': _$ToDoStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$ToDoStatusEnumMap = {
  ToDoStatus.IN_PROGRESS: 'IN_PROGRESS',
  ToDoStatus.TO_DO: 'TO_DO',
  ToDoStatus.NOTE: 'NOTE',
  ToDoStatus.DONE: 'DONE',
};