import 'package:planner/externals/types.dart';

enum ToDoStatus {
  IN_PROGRESS,
  TO_DO,
  DONE,
}

typedef ToDo = ({
  ToDoID id,
  String title,
  String description,
  ToDoStatus status,
  String? category,
});

typedef Note = ({
  String title,
  String description,
  String? category,
});
