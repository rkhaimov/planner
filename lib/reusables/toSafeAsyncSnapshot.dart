import 'package:flutter/material.dart';

import 'either.dart';

Either<void, T> toSafeAsyncSnapshot<T>(AsyncSnapshot<T> snapshot) {
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
