import 'dart:convert';

import 'package:planner/externals/deprecated.dart';
import 'package:planner/externals/types.dart';
import 'package:planner/reusables/aggregate/types.dart';
import 'package:planner/reusables/non_empty_string.dart';

Iterable<SourcedEvent> withStructureVerified({required String all}) {
  try {
    final iterable = jsonDecode(all).map((it) => SourcedEvent.fromJson(it));

    return List<SourcedEvent>.from(iterable);
  } catch (_) {
    final iterable =
        jsonDecode(all).map((it) => SourcedEventDeprecated.fromJson(it));

    return List<SourcedEventDeprecated>.from(iterable).map(_fromDeprecated);
  }
}

SourcedEvent _fromDeprecated(SourcedEventDeprecated it) => switch (it) {
      CreatedSEDeprecated() => CreatedSE(it.parent, it.at),
      TitleChangedSEDeprecated() => TitleChangedSE(
          it.parent,
          it.at,
          NonEmptyString.create(it.title),
        ),
      DescriptionChangedSEDeprecated() => DescriptionChangedSE(
          it.parent,
          it.at,
          NonEmptyString.create(it.description),
        ),
      MarkedAsThoughtSEDeprecated() => MarkedAsThoughtSE(it.parent, it.at),
      CategoryChangedSEDeprecated() => CategoryChangedSE(
          it.parent,
          it.at,
          NonEmptyString.create(it.category),
        ),
      StatusChangedSEDeprecated() => switch (it.status) {
          AggregateStatus.IN_PROGRESS => MarkedAsInProgress(it.parent, it.at),
          AggregateStatus.TO_DO => MarkedAsToDo(it.parent, it.at),
          AggregateStatus.DONE => MarkedAsDone(it.parent, it.at),
        },
    };
