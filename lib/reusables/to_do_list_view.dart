import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/reusables/cq/query_builder.dart';
import 'package:planner/reusables/toToDoStruct.dart';
import 'package:planner/reusables/types.dart';

typedef ToDoActionBuilder = Iterable<ListTile> Function(ToDoStruct todo);

// TODO: Refactor
class ToDoListView extends HookWidget {
  final bool Function(ToDoStruct todo) filter;
  final ToDoActionBuilder buildActions;

  const ToDoListView({
    super.key,
    required this.filter,
    required this.buildActions,
  });

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return QueryBuilder(
      createQuery: externals.getAllSourcedEvents,
      onInitializing: (context) => const Text('Waiting'),
      onData: (context, response) {
        final categorized =
            toToDoStruct(response).where(filter).fold<CategorizedToDoStructs>(
          (categorized: {}, other: []),
          (all, it) {
            final category = it.category;

            if (category == null) {
              return (other: [...all.other, it], categorized: all.categorized);
            }

            return (
              other: all.other,
              categorized: all.categorized
                ..update(category, (others) => [...others, it],
                    ifAbsent: () => [it])
            );
          },
        );

        final tiles = _buildItemRenderers(buildActions, categorized);

        return ListView.builder(
          itemCount: tiles.length,
          itemBuilder: (context, index) => tiles.elementAt(index)(context),
        );
      },
    );
  }
}

typedef TileBuilder = ListTile Function(BuildContext context);

typedef CategorizedToDoStructs = ({
  Map<CategoryStruct, Iterable<ToDoStruct>> categorized,
  Iterable<ToDoStruct> other,
});

Iterable<TileBuilder> _buildItemRenderers(
  ToDoActionBuilder buildActions,
  CategorizedToDoStructs elements,
) {
  final categorized = elements.categorized.entries.expand<TileBuilder>(
    (it) => [
      (context) => _buildCategoryTile(context, it.key),
      ...it.value.map(
          (todo) => (context) => _buildToDoTile(context, buildActions, todo)),
    ],
  );

  if (elements.other.isEmpty) {
    return categorized;
  }

  return [
    ...categorized,
    (context) => _buildOthersCategoryTile(context),
    ...elements.other
        .map((todo) => (context) => _buildToDoTile(context, buildActions, todo))
  ];
}

final _buildCategoryTile =
    (BuildContext context, CategoryStruct category) => ListTile(
          title: Text(
            category.value.raw,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );

final _buildToDoTile = (
  BuildContext context,
  ToDoActionBuilder buildActions,
  ToDoStruct todo,
) {
  final description = todo.description;

  return ListTile(
    title: Text(todo.title?.raw ?? '<НЕТ ОГЛАВЛЕНИЯ>'),
    subtitle: description == null ? null : Text(description.raw),
    onTap: () => showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        // TODO: Get rid off hard code values
        height: 250,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Select an action',
                style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(flex: 1),
            ListView(
              shrinkWrap: true,
              children: buildActions(todo).toList(),
            ),
          ],
        ),
      ),
    ),
  );
};

final _buildOthersCategoryTile = (BuildContext context) => ListTile(
      title: Text(
        "Others",
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.grey),
      ),
    );
