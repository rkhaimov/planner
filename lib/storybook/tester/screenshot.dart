import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:planner/reusables/utils.dart';

final createEmptyScreenshot = () async => Uint8List(0);

final captureScreenshot = () async {
  final renderObject = WidgetsBinding.instance.rootElement!.renderObject;
  final layer = renderObject!.debugLayer! as OffsetLayer;

  final file = await layer.toImage(renderObject.paintBounds);

  final bytes =
      requireNotNull(await file.toByteData(format: ImageByteFormat.png));

  return bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
};
