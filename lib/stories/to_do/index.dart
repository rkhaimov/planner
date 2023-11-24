import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/to_do_list_view.dart';
import 'package:planner/stories/actions.dart';

class ToDo extends HookWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return ToDoListView(
      filter: (it) => it.status == AggregateStatus.TO_DO || it.status == null,
      buildActions: (todo) => [
        buildOpenInfoAction(context, todo.id),
        buildInProgressAction(context, externals, todo),
        buildDoneAction(context, externals, todo),
        buildRemoveAction(context, externals, todo.id),
      ],
    );
  }
}
