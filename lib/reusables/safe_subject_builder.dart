import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import 'safe_stream_builder.dart';

class SafeSubjectBuilder<T> extends StatelessWidget {
  final ValueStream<T> subject;
  final Widget Function(BuildContext context, T response) onData;

  const SafeSubjectBuilder(
      {super.key, required this.subject, required this.onData});

  @override
  Widget build(BuildContext context) {
    return SafeStreamBuilder(
      stream: subject,
      onWaiting: (context) => onData(context, subject.value),
      onData: onData,
    );
  }
}
