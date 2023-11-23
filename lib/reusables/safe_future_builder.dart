import 'dart:async';

import 'package:flutter/material.dart';

import 'toSafeAsyncSnapshot.dart';

class SafeFutureBuilder<T> extends StatelessWidget {
  final Future<T> future;
  final WidgetBuilder onWaiting;
  final Widget Function(BuildContext context, T response) onData;

  const SafeFutureBuilder({
    super.key,
    required this.future,
    required this.onWaiting,
    required this.onData,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) => toSafeAsyncSnapshot(snapshot).fold(
        (_) => onWaiting(context),
        (response) => onData(context, response),
      ),
    );
  }
}
