import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/index.dart';
import 'package:planner/reusables/thought/types.dart';
import 'package:planner/reusables/utils.dart';

Iterable<ThoughtStruct> toThoughtStruct(Iterable<SourcedEvent> events) =>
    toAggregateStruct(events)
        .where((it) => it.deleted.not())
        .where((it) => it.thought)
        .map(
          (it) => ThoughtStruct(
            id: it.id,
            title: it.title,
            category: it.category,
            description: it.description,
          ),
        );
