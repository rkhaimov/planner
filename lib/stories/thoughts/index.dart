import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/provider.dart';
import 'package:planner/reusables/cq/query_builder.dart';
import 'package:planner/reusables/toThoughtsStruct.dart';
import 'package:planner/reusables/types.dart';

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

        final tiles = _buildItemRenderers(categorized);

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
  CategorizedThoughtsStructs elements,
) {
  final categorized = elements.categorized.entries.expand<TileBuilder>(
    (it) => [
      (context) => _buildCategoryTile(context, it.key),
      ...it.value
          .map((thought) => (context) => _buildThoughtTile(context, thought)),
    ],
  );

  if (elements.other.isEmpty) {
    return categorized;
  }

  return [
    ...categorized,
    (context) => _buildOthersCategoryTile(context),
    ...elements.other
        .map((thought) => (context) => _buildThoughtTile(context, thought))
  ];
}

final _buildCategoryTile =
    (BuildContext context, CategoryStruct category) => ListTile(
          title: Text(
            category.value.raw,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );

final _buildThoughtTile = (BuildContext context, ThoughtStruct thought) {
  final description = thought.description;

  return ListTile(
    title: Text(thought.title?.raw ?? '<НЕТ ОГЛАВЛЕНИЯ>'),
    subtitle: description == null ? null : Text(description.raw),
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
