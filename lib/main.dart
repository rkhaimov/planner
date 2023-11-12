import 'package:flutter/material.dart';
import 'package:planner/createApp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(createAppMaterial(createAppHome()));
}
