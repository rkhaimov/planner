import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/datetime.dart';
import 'package:planner/reusables/to_do_list_view.dart';
import 'package:planner/reusables/types.dart';
import 'package:planner/stories/view_todo/index.dart';

class Done extends HookWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return ToDoListView(
      filter: (it) => it.status == ToDoStatus.DONE,
      buildActions: (todo) => [
        ListTile(
          title: const Text('Open info'),
          trailing: const Icon(Icons.info_outline),
          onTap: () => viewToDoInfo(context, todo.id)
              .then((_) => Navigator.pop(context)),
        ),
        ListTile(
          title: const Text('Mark as to do'),
          trailing: const Icon(Icons.pause_outlined),
          onTap: () => externals
              .pushSourcedEvent(MarkedAsToDo(todo.id, now()))
              .then((_) => Navigator.pop(context)),
        ),
        ListTile(
          title: const Text('Mark as in progress'),
          trailing: const Icon(Icons.play_arrow_outlined),
          onTap: () => externals
              .pushSourcedEvent(MarkedAsInProgress(todo.id, now()))
              .then((_) => Navigator.pop(context)),
        ),
      ],
    );
  }
}
