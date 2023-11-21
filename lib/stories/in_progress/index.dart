import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/reusables/cq/query_builder.dart';
import 'package:planner/reusables/toToDoStruct.dart';
import 'package:planner/reusables/types.dart';

// TODO: Deduplicate
class InProgress extends HookWidget {
  const InProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return QueryBuilder(
      createQuery: externals.getAllSourcedEvents,
      onInitializing: (context) => const Text('Waiting'),
      onData: (context, response) {
        final todos = toToDoStruct(response)
            .where((it) => it.status == ToDoStatus.IN_PROGRESS);

        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(todos.elementAt(index).title ?? '<НЕТ ОГЛАВЛЕНИЯ>'),
            subtitle: Text(todos.elementAt(index).description ?? '<НЕТ ОПИСАНИЯ>'),
            onTap: () {},
            onLongPress: () {},
          ),
        );
      },
    );
  }
}
