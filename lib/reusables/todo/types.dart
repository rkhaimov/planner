import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/category_struct.dart';
import 'package:planner/reusables/non_empty_string.dart';

part 'types.freezed.dart';

@freezed
class ToDoStruct with _$ToDoStruct {
  factory ToDoStruct({
    required ID id,
    NonEmptyString? title,
    NonEmptyString? description,
    AggregateStatus? status,
    CategoryStruct? category,
  }) = _ToDoStruct;
}
