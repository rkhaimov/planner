import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../safe_stream_builder.dart';
import 'core.dart';
import 'types.dart';

class QueryBuilder<T> extends HookWidget {
  final Query<T> Function() createQuery;
  final WidgetBuilder onInitializing;
  final Widget Function(BuildContext context, T response) onData;

  const QueryBuilder({
    super.key,
    required this.createQuery,
    required this.onInitializing,
    required this.onData,
  });

  @override
  Widget build(BuildContext context) => SafeStreamBuilder(
        stream: useMemoized(() => toQueryResponseStream(createQuery())),
        onWaiting: onInitializing,
        onData: onData,
      );
}
