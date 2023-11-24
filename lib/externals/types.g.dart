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

_$DeletedSEImpl _$$DeletedSEImplFromJson(Map<String, dynamic> json) =>
    _$DeletedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeletedSEImplToJson(_$DeletedSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$TitleChangedSEImpl _$$TitleChangedSEImplFromJson(Map<String, dynamic> json) =>
    _$TitleChangedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      json['title'] == null ? null : NonEmptyString.fromJson(json['title']),
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
      json['description'] == null
          ? null
          : NonEmptyString.fromJson(json['description']),
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

_$MarkedAsThoughtSEImpl _$$MarkedAsThoughtSEImplFromJson(
        Map<String, dynamic> json) =>
    _$MarkedAsThoughtSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkedAsThoughtSEImplToJson(
        _$MarkedAsThoughtSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$MarkedAsToDoSEImpl _$$MarkedAsToDoSEImplFromJson(Map<String, dynamic> json) =>
    _$MarkedAsToDoSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkedAsToDoSEImplToJson(
        _$MarkedAsToDoSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$CategoryChangedSEImpl _$$CategoryChangedSEImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryChangedSEImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      json['category'] == null
          ? null
          : NonEmptyString.fromJson(json['category']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CategoryChangedSEImplToJson(
        _$CategoryChangedSEImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'category': instance.category,
      'runtimeType': instance.$type,
    };

_$MarkedAsInProgressImpl _$$MarkedAsInProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$MarkedAsInProgressImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkedAsInProgressImplToJson(
        _$MarkedAsInProgressImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$MarkedAsDoneImpl _$$MarkedAsDoneImplFromJson(Map<String, dynamic> json) =>
    _$MarkedAsDoneImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkedAsDoneImplToJson(_$MarkedAsDoneImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$MarkedAsToDoImpl _$$MarkedAsToDoImplFromJson(Map<String, dynamic> json) =>
    _$MarkedAsToDoImpl(
      ID.fromJson(json['parent']),
      DateTime.parse(json['at'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MarkedAsToDoImplToJson(_$MarkedAsToDoImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'at': instance.at.toIso8601String(),
      'runtimeType': instance.$type,
    };
