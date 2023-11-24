import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/index.dart';
import 'package:planner/reusables/utils.dart';

import 'types.dart';

Iterable<ToDoStruct> toToDoStruct(Iterable<SourcedEvent> events) =>
    toAggregateStruct(events)
        .where((it) => it.deleted.not())
        .where((it) => it.thought.not())
        .map(
          (it) => ToDoStruct(
            id: it.id,
            title: it.title,
            category: it.category,
            description: it.description,
            status: it.status,
          ),
        );
