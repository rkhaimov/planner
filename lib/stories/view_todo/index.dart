import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/cq/query_builder.dart';
import 'package:planner/reusables/toToDoStruct.dart';
import 'package:planner/reusables/types.dart';
import 'package:planner/stories/edit_todo/index.dart';

final viewToDoInfo = (BuildContext context, ID id) => Navigator.of(context)
    .push(MaterialPageRoute(builder: (_) => _ViewToDo(id: id)));

class _ViewToDo extends HookWidget {
  final ID id;

  const _ViewToDo({required this.id});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return QueryBuilder(
      createQuery: externals.getAllSourcedEvents,
      onInitializing: (context) => Text('Waiting'),
      onData: (context, events) {
        final todo =
            toToDoStruct(events).singleWhereOrNull((it) => it.id == id);

        if (todo == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('VIEW TODO')),
            body: Text('Referenced to do is no longer available'),
          );
        }

        return Scaffold(
          appBar: AppBar(title: const Text('VIEW TODO')),
          floatingActionButton: IconButton(
            onPressed: () => askForEditToDoInfo(context, todo),
            icon: const Icon(Icons.edit),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Title',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(title: Text(todo.title?.raw ?? '<TITLE IS EMPTY>')),
                ListTile(
                  title: Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(
                    title: Text(
                        todo.description?.raw ?? '<DESCRIPTION IS EMPTY>')),
                ListTile(
                  title: Text(
                    'Category',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(
                  title:
                      Text(todo.category?.value.raw ?? '<CATEGORY IS EMPTY>'),
                ),
                ListTile(
                  title: Text(
                    'Status',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                // TODO: Status duplication
                ListTile(
                  title: Text(todo.status?.name ?? ToDoStatus.TO_DO.name),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
