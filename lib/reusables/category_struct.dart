import 'package:planner/reusables/non_empty_string.dart';
import 'package:planner/reusables/utils.dart';

class CategoryStruct {
  final NonEmptyString value;

  static CategoryStruct? create(NonEmptyString? value) {
    if (value == null) {
      return null;
    }

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
