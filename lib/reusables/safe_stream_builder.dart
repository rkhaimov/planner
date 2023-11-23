import 'package:flutter/material.dart';
import 'package:planner/reusables/toSafeAsyncSnapshot.dart';

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
      builder: (context, snapshot) => toSafeAsyncSnapshot(snapshot)
          .fold((_) => onWaiting(context), (it) => onData(context, it)),
    );
  }
}
