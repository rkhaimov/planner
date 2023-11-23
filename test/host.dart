import 'dart:convert';
import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';

import 'types.dart';

// flutter devices -> emulator-5554
// flutter drive --driver=test/host.dart --target=test/emulator.dart --dart-define=MODE="TESTING" -d emulator-5554
Future<void> main() async {
  final driver = await FlutterDriver.connect();

  final results = await driver
      .requestData(null)
      .then(jsonDecode)
      .then((it) => TestingResults.fromJson(it));

  await driver.close();

  if (await Directory('screenshots').exists()) {
    await Directory('screenshots').delete(recursive: true);
  }

  for (final screenshot in results.screenshots) {
    final File image = await File('screenshots/${screenshot.name}.png')
        .create(recursive: true);

    image.writeAsBytesSync(screenshot.bytes);
  }
}
