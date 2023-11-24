import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/index.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/cq/query_builder.dart';
import 'package:planner/stories/edit_aggregate/index.dart';

final viewAggregateInfo = (BuildContext context, ID id) => Navigator.of(context)
    .push(MaterialPageRoute(builder: (_) => _ViewAggregate(id: id)));

class _ViewAggregate extends HookWidget {
  final ID id;

  const _ViewAggregate({required this.id});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return QueryBuilder(
      createQuery: externals.getAllSourcedEvents,
      onInitializing: (context) => Text('Waiting'),
      onData: (context, events) {
        final aggregate =
            toAggregateStruct(events).singleWhereOrNull((it) => it.id == id);

        if (aggregate == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('VIEW AGGREGATE')),
            body: Text('Referenced aggregate is no longer available'),
          );
        }

        return Scaffold(
          appBar: AppBar(title: const Text('VIEW AGGREGATE')),
          floatingActionButton: IconButton(
            onPressed: () => askForEditAggregateInfo(context, aggregate),
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
                ListTile(
                    title: Text(
                        aggregate.title?.toString() ?? '<TITLE IS EMPTY>')),
                ListTile(
                  title: Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(
                    title: Text(aggregate.description?.toString() ??
                        '<DESCRIPTION IS EMPTY>')),
                ListTile(
                  title: Text(
                    'Category',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(
                  title: Text(aggregate.category?.value.toString() ??
                      '<CATEGORY IS EMPTY>'),
                ),
                ListTile(
                  title: Text(
                    'Status',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                // TODO: Status duplication
                ListTile(
                  title: Text(
                      aggregate.status?.name ?? AggregateStatus.TO_DO.name),
                ),
                ListTile(
                  title: Text(
                    'Thought',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                ListTile(title: Text(aggregate.thought == true ? 'YES' : 'NO')),
              ],
            ),
          ),
        );
      },
    );
  }
}
