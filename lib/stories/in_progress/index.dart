import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/to_do_list_view.dart';
import 'package:planner/stories/actions.dart';

class InProgress extends HookWidget {
  const InProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return ToDoListView(
      filter: (it) => it.status == AggregateStatus.IN_PROGRESS,
      buildActions: (todo) => [
        buildOpenInfoAction(context, todo.id),
        buildToDoAction(context, externals, todo),
        buildDoneAction(context, externals, todo),
        buildRemoveAction(context, externals, todo.id),
      ],
    );
  }
}
