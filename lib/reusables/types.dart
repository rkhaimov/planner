import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/utils.dart';

part 'types.freezed.dart';

enum ToDoStatus {
  IN_PROGRESS,
  TO_DO,
  DONE,
}

class CategoryStruct {
  final NonEmptyString value;

  factory CategoryStruct.create(NonEmptyString value) {
    final (first, rest) = value.toFirstAndRest();

    return CategoryStruct._(first.toUpperCase().join(rest));
  }

  CategoryStruct._(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      value == requireType<CategoryStruct>(other).value;
}

@freezed
class ToDoStruct with _$ToDoStruct {
  factory ToDoStruct({
    required ID id,
    NonEmptyString? title,
    NonEmptyString? description,
    ToDoStatus? status,
    CategoryStruct? category,
  }) = _ToDoStruct;
}

@freezed
class ThoughtStruct with _$ThoughtStruct {
  factory ThoughtStruct({
    required ID id,
    NonEmptyString? title,
    NonEmptyString? description,
    CategoryStruct? category,
  }) = _ThoughtStruct;
}
