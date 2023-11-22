import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/reusables/to_do_list_view.dart';
import 'package:planner/reusables/types.dart';

class InProgress extends HookWidget {
  const InProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return ToDoListView(
      filter: (it) => it.status == ToDoStatus.IN_PROGRESS,
      buildActions: (todo) => [],
    );
  }
}
