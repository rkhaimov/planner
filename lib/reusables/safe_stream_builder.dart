import 'package:flutter/material.dart';

import 'either.dart';

class SafeStreamBuilder<T> extends StatelessWidget {
  final Stream<T> stream;
  final WidgetBuilder onWaiting;
  final Widget Function(BuildContext context, T response) onData;

  const SafeStreamBuilder({
    super.key,
    required this.stream,
    required this.onWaiting,
    required this.onData,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) => switch (_toSafeAsyncSnapshot(snapshot)) {
        Left() => onWaiting(context),
        Right(value: final response) => onData(context, response),
      },
    );
  }
}

Either<void, T> _toSafeAsyncSnapshot<T>(AsyncSnapshot snapshot) {
  _ensureNoErrors(snapshot);

  final waiting = {ConnectionState.none, ConnectionState.waiting}
      .contains(snapshot.connectionState);

  if (waiting) {
    return Either.left(null);
  }

  return Either.right(snapshot.data as T);
}

void _ensureNoErrors(AsyncSnapshot snapshot) {
  if (snapshot.error != null) {
    throw Error.throwWithStackTrace(snapshot.error!, snapshot.stackTrace!);
  }
}
