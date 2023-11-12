import 'dart:ui';

import 'package:flutter/services.dart';

final createTextTyper = () {
  final channel = _TextInputMethodChannel();

  TextInput.setChannel(channel);

  return (String text) async {
    final payload = JSONMethodCodec().encodeMethodCall(
      MethodCall('TextInputClient.updateEditingState', [
        await channel.getCurrentClientId(),
        {
          'selectionBase': text.length,
          'selectionExtent': text.length,
          'text': text,
        }
      ]),
    );

    channelBuffers.push('flutter/textinput', payload, (_) {});
  };
};

class _TextInputMethodChannel extends OptionalMethodChannel {
  int? _client;

  _TextInputMethodChannel()
      : super('flutter/textinput', const JSONMethodCodec());

  @override
  Future<T?> invokeMethod<T>(String method, [arguments]) {
    if (method == 'TextInput.setClient') {
      _client = (arguments as Iterable<dynamic>).first as int;
    }

    if (method == 'TextInput.clearClient') {
      _client = null;
    }

    return super.invokeMethod(method, arguments);
  }

  Future<int> getCurrentClientId() async {
    final client = _client;

    if (client != null) {
      return client;
    }

    await Future.delayed(const Duration(milliseconds: 500));

    return getCurrentClientId();
  }
}
