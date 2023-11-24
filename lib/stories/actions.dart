import 'package:flutter/material.dart';
import 'package:planner/externals/externals.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/datetime.dart';
import 'package:planner/reusables/showConfirm.dart';
import 'package:planner/reusables/todo/types.dart';
import 'package:planner/stories/view_aggregate/index.dart';

final buildOpenInfoAction = (BuildContext context, ID id) => ListTile(
      title: const Text('Open info'),
      trailing: const Icon(Icons.info_outline),
      onTap: () =>
          viewAggregateInfo(context, id).then((_) => Navigator.pop(context)),
    );

final buildInProgressAction =
    (BuildContext context, ReactiveExternals externals, ToDoStruct todo) =>
        ListTile(
          title: const Text('Mark as in progress'),
          trailing: const Icon(Icons.play_arrow_outlined),
          onTap: () => externals
              .pushSourcedEvent(MarkedAsInProgress(todo.id, now()))
              .then((_) => Navigator.pop(context)),
        );

final buildToDoAction =
    (BuildContext context, ReactiveExternals externals, ToDoStruct todo) =>
        ListTile(
          title: const Text('Mark as to do'),
          trailing: const Icon(Icons.pause_outlined),
          onTap: () => externals
              .pushSourcedEvent(MarkedAsToDo(todo.id, now()))
              .then((_) => Navigator.pop(context)),
        );

final buildDoneAction =
    (BuildContext context, ReactiveExternals externals, ToDoStruct todo) =>
        ListTile(
          title: const Text('Mark as done'),
          trailing: const Icon(Icons.done),
          onTap: () => externals
              .pushSourcedEvent(MarkedAsDone(todo.id, now()))
              .then((_) => Navigator.pop(context)),
        );

final buildRemoveAction =
    (BuildContext context, ReactiveExternals externals, ID id) => ListTile(
          title: Text(
            'Remove',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.redAccent),
          ),
          trailing: const Icon(Icons.delete_outline, color: Colors.redAccent),
          onTap: () async {
            // TODO: Should be declarative
            Navigator.pop(context);

            final confirmed = await showConfirm(
              context,
              title: 'Remove confirmation',
              description: 'Are you sure?',
              ok: 'YES',
              cancel: 'NO',
            );

            if (confirmed) {
              await externals.pushSourcedEvent(DeletedSE(id, now()));
            }
          },
        );
