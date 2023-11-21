import 'package:flutter/material.dart';

import 'stories.dart';
import 'storybook.dart';

// flutter run ./lib/storybook/entry.dart --dart-define=MODE="TESTING"
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(await createStorybook(stories));
}
