import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/externals.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/reusables/category_struct.dart';
import 'package:planner/reusables/cq/query_builder.dart';
import 'package:planner/reusables/thought/toThoughtStruct.dart';
import 'package:planner/reusables/thought/types.dart';
import 'package:planner/stories/actions.dart';

class Thoughts extends HookWidget {
  const Thoughts({super.key});

  @override
  Widget build(BuildContext context) {
    final externals = useExternals();

    return QueryBuilder(
      createQuery: externals.getAllSourcedEvents,
      onInitializing: (context) => const Text('Waiting'),
      onData: (context, response) {
        final categorized =
            toThoughtStruct(response).fold<CategorizedThoughtsStructs>(
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

        final tiles = _buildItemRenderers(externals, categorized);

        return ListView.builder(
          itemCount: tiles.length,
          itemBuilder: (context, index) => tiles.elementAt(index)(context),
        );
      },
    );
  }
}

typedef TileBuilder = ListTile Function(BuildContext context);

typedef CategorizedThoughtsStructs = ({
  Map<CategoryStruct, Iterable<ThoughtStruct>> categorized,
  Iterable<ThoughtStruct> other,
});

Iterable<TileBuilder> _buildItemRenderers(
  ReactiveExternals externals,
  CategorizedThoughtsStructs elements,
) {
  final categorized = elements.categorized.entries.expand<TileBuilder>(
    (it) => [
      (context) => _buildCategoryTile(context, it.key),
      ...it.value.map((thought) =>
          (context) => _buildThoughtTile(context, externals, thought)),
    ],
  );

  if (elements.other.isEmpty) {
    return categorized;
  }

  return [
    ...categorized,
    (context) => _buildOthersCategoryTile(context),
    ...elements.other.map((thought) =>
        (context) => _buildThoughtTile(context, externals, thought))
  ];
}

final _buildCategoryTile =
    (BuildContext context, CategoryStruct category) => ListTile(
          title: Text(
            category.value.toString(),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );

final _buildThoughtTile = (
  BuildContext context,
  ReactiveExternals externals,
  ThoughtStruct thought,
) {
  final description = thought.description;

  return ListTile(
      title: Text(thought.title?.toString() ?? '<НЕТ ОГЛАВЛЕНИЯ>'),
      subtitle: description == null ? null : Text(description.toString()),
      onTap: () => showModalBottomSheet(
            context: context,
            builder: (_) {
              final actions = [
                buildOpenInfoAction(context, thought.id),
                buildRemoveAction(context, externals, thought.id),
              ];

              // TODO: Get rid of hardcoded values
              const tileHeight = 56;

              return Container(
                height: actions.length * tileHeight + 100,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Select an action',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Spacer(flex: 1),
                    ListView(
                      shrinkWrap: true,
                      // TODO: Deduplicate actions
                      children: actions.toList(),
                    ),
                  ],
                ),
              );
            },
          ));
};

final _buildOthersCategoryTile = (BuildContext context) => ListTile(
      title: Text(
        'Others',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.grey),
      ),
    );
