import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/datetime.dart';
import 'package:planner/reusables/to_do_list_view.dart';
import 'package:planner/reusables/types.dart';

class ToDo extends HookWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return ToDoListView(
      filter: (it) => it.status == ToDoStatus.TO_DO || it.status == null,
      buildActions: (todo) => [
        const ListTile(
          title: Text('Open info'),
          trailing: Icon(Icons.info_outline),
        ),
        ListTile(
          title: const Text('Mark as in progress'),
          trailing: const Icon(Icons.play_arrow_outlined),
          onTap: () => externals
              .pushSourcedEvent(
                  StatusChangedSE(todo.id, now(), ToDoStatus.IN_PROGRESS))
              .then((_) => Navigator.pop(context)),
        ),
        // TODO: Test it
        ListTile(
          title: const Text('Mark as done'),
          trailing: const Icon(Icons.done),
          onTap: () => externals
              .pushSourcedEvent(
                  StatusChangedSE(todo.id, now(), ToDoStatus.DONE))
              .then((_) => Navigator.pop(context)),
        ),
      ],
    );
  }
}
