import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/category_struct.dart';
import 'package:planner/reusables/non_empty_string.dart';

part 'types.freezed.dart';

@freezed
class ThoughtStruct with _$ThoughtStruct {
  factory ThoughtStruct({
    required ID id,
    NonEmptyString? title,
    NonEmptyString? description,
    CategoryStruct? category,
  }) = _ThoughtStruct;
}
