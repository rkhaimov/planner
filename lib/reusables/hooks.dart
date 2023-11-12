import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rxdart/rxdart.dart';

void useStreamEffect(Stream<Object?> Function() effect, List<Object?> keys) {
  final snapshot =
      useStream(useMemoized(() => effect().ignoreElements(), keys));

  if (snapshot.error != null) {
    Error.throwWithStackTrace(snapshot.error!, snapshot.stackTrace!);
  }
}
