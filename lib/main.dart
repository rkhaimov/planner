import 'package:flutter/material.dart';
import 'package:planner/createApp.dart';
import 'package:planner/externals/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Root(externals: await createOriginExternals(), ui: const UI()));
}
