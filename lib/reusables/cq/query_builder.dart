import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../safe_stream_builder.dart';
import 'core.dart';
import 'types.dart';

class QueryBuilder<T> extends HookWidget {
  final Query<T> Function() createQuery;
  final List<Object?> dependencies;
  final WidgetBuilder onInitializing;
  final Widget Function(BuildContext context, Response<T> response) onData;

  const QueryBuilder({
    super.key,
    required this.createQuery,
    required this.onInitializing,
    required this.onData,
    this.dependencies = const [],
  });

  @override
  Widget build(BuildContext context) => SafeStreamBuilder(
        stream: useMemoized(
          () => toQueryResponseStream(createQuery()),
          dependencies,
        ),
        onWaiting: onInitializing,
        onData: onData,
      );
}
