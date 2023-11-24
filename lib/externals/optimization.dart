import 'package:planner/reusables/utils.dart';

import 'types.dart';

// TODO: Implement
Iterable<SourcedEvent> withOptimizedContent(Iterable<SourcedEvent> all) {
  throw UnimplementedError();
}

T _later<T extends SourcedEvent>(T left, T right) {
  require(
    left.parent == right.parent,
    'Both events should belong to the same parent',
  );

  return left.at.isAfter(right.at) ? left : right;
}
