import 'package:planner/externals/types.dart';
import 'package:planner/reusables/utils.dart';

enum ToDoStatus {
  IN_PROGRESS,
  TO_DO,
  DONE,
}

class CategoryStruct {
  final String value;

  CategoryStruct(String value)
      : value =
            '${value.substring(0, 1).toUpperCase()}${value.substring(1)}'.trim();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      value == requireType<CategoryStruct>(other).value;
}

class ToDoStruct {
  ID id;
  String? title;
  String? description;
  ToDoStatus? status;
  CategoryStruct? category;

  ToDoStruct({
    required this.id,
    this.title,
    this.description,
    this.status,
    this.category,
  });
}
