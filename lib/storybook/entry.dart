import 'package:flutter/material.dart';

import 'stories.dart';
import 'storybook.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(await createStorybook(stories));
}
