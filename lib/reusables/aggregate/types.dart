import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/category_struct.dart';
import 'package:planner/reusables/non_empty_string.dart';

part 'types.freezed.dart';

@freezed
class AggregateStruct with _$AggregateStruct {
  factory AggregateStruct({
    required ID id,
    required bool deleted,
    required bool thought,
    NonEmptyString? title,
    NonEmptyString? description,
    AggregateStatus? status,
    CategoryStruct? category,
  }) = _AggregateStruct;
}

enum AggregateStatus {
  IN_PROGRESS,
  TO_DO,
  DONE,
}
