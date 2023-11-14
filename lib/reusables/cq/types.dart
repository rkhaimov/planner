import 'dart:async';

class Query<T> {
  final Future<T> Function() request;
  final Source source;

  Query({required this.request, required this.source});
}

class Source {
  final Stream<void> Function() updates;
  final void Function() update;

  Source({required this.updates, required this.update});
}
