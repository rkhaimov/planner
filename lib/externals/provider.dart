import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/externals.dart';
import 'package:provider/provider.dart';

class ExternalsProvider extends StatelessWidget {
  final ReactiveExternals externals;
  final Widget child;

  const ExternalsProvider({
    super.key,
    required this.externals,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<ReactiveExternals>.value(value: externals, child: child);
  }
}

final useExternals = () => useContext().read<ReactiveExternals>();
