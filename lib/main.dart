import 'package:flutter/material.dart';
import 'package:planner/createApp.dart';
import 'package:planner/externals/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Root(externals: originExternals, ui: const UI()));
}
