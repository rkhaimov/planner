import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';

part 'types.g.dart';

@freezed
class TestingResults with _$TestingResults {
  factory TestingResults({required List<Screenshot> screenshots}) =
      _TestingResults;

  factory TestingResults.fromJson(Map<String, dynamic> json) =>
      _$TestingResultsFromJson(json);
}

@freezed
class Screenshot with _$Screenshot {
  factory Screenshot({required String name, required List<int> bytes}) =
      _Screenshot;

  factory Screenshot.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotFromJson(json);
}
