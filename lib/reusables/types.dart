import 'package:planner/externals/types.dart';

enum ToDoStatus {
  IN_PROGRESS,
  TO_DO,
  NOTE,
  DONE,
}

class ToDoStruct {
  ID id;
  String? title;
  String? description;
  ToDoStatus? status;

  ToDoStruct({
    required this.id,
    this.title,
    this.description,
    this.status,
  });
}
