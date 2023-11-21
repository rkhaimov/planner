import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/externals/externals.dart';
import 'package:planner/externals/toReactiveExternals.dart';
import 'package:provider/provider.dart';

class ExternalsProvider extends StatelessWidget {
  final OriginExternals externals;
  final Widget child;

  const ExternalsProvider({
    super.key,
    required this.externals,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<ReactiveExternals>.value(
      value: toReactiveExternals(externals),
      child: child,
    );
  }
}

final useExternals = () => useContext().read<ReactiveExternals>();
