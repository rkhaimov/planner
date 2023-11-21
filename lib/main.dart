import 'package:flutter/material.dart';
import 'package:planner/createApp.dart';
import 'package:planner/externals/index.dart';

// flutter run ./lib/storybook/entry.dart --dart-define=MODE="PRODUCTION"
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Root(externals: createOriginExternals(), ui: const UI()));
}
