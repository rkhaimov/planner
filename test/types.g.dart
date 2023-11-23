// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestingResultsImpl _$$TestingResultsImplFromJson(Map<String, dynamic> json) =>
    _$TestingResultsImpl(
      screenshots: (json['screenshots'] as List<dynamic>)
          .map((e) => Screenshot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestingResultsImplToJson(
        _$TestingResultsImpl instance) =>
    <String, dynamic>{
      'screenshots': instance.screenshots,
    };

_$ScreenshotImpl _$$ScreenshotImplFromJson(Map<String, dynamic> json) =>
    _$ScreenshotImpl(
      name: json['name'] as String,
      bytes: (json['bytes'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$ScreenshotImplToJson(_$ScreenshotImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bytes': instance.bytes,
    };
