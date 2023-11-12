import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner/storybook/types.dart';

import 'createTextTyper.dart';

final createAct = (Future<Uint8List> Function() screenshot) {
  final controller = _createController();

  final acts = <Future<Iterable<Screenshot>> Function()>[];
  late final ActBuilder Function() createActBuilder;

  ActBuilder withoutScreenshot(Future<void> Function() act) {
    acts.add(() async {
      await act();

      return [];
    });

    return createActBuilder();
  }

  createActBuilder = () => ActBuilder(
        settle: () => withoutScreenshot(controller.settle),
        tap: (on) => withoutScreenshot(() => controller.tap(on)),
        swipeLeft: (on) => withoutScreenshot(() => controller.swipeLeft(on)),
        swipeRight: (on) => withoutScreenshot(() => controller.swipeRight(on)),
        enterText: (on, text) =>
            withoutScreenshot(() => controller.enterText(on, text)),
        scrollTop: ({scrollTo}) =>
            withoutScreenshot(() => controller.scrollTop(scrollTo: scrollTo)),
        scrollBottom: ({scrollTo}) => withoutScreenshot(
            () => controller.scrollBottom(scrollTo: scrollTo)),
        waitUntilAppear: (selector) =>
            withoutScreenshot(() => controller.waitUntilAppear(selector)),
        waitUntilDisappear: (selector) =>
            withoutScreenshot(() => controller.waitUntilDisappear(selector)),
        screenshot: ([title]) {
          acts.add(
            () async => [
              (
                label: title,
                content: await screenshot(),
              )
            ],
          );

          return createActBuilder();
        },
        act: () => acts.fold(
          Future.value([]),
          (prev, curr) async => [...await prev, ...await curr()],
        ),
      );

  return (builder: createActBuilder(), controller: controller);
};

final _createController = () {
  final controller = LiveWidgetController(WidgetsBinding.instance);

  final settle = () => controller.pumpAndSettle();

  final tap = (Finder on) async {
    await controller.tap(on, warnIfMissed: false);

    await settle();
  };

  final swipeLeft = (Finder on) async {
    await controller.drag(on, const Offset(-500, 0));

    await settle();
  };

  final swipeRight = (Finder on) async {
    await controller.drag(on, const Offset(500, 0));

    await settle();
  };

  Future<void> waitUntilAppear(Finder Function() selector) async {
    if (selector().evaluate().isNotEmpty) {
      return;
    }

    await settle();

    return waitUntilAppear(selector);
  }

  Future<void> waitUntilDisappear(Finder Function() selector) async {
    if (selector().evaluate().isEmpty) {
      return;
    }

    await settle();

    return waitUntilDisappear(selector);
  }

  final typeText = createTextTyper();

  final enterText = (Finder on, String text) async {
    await tap(on);
    await typeText(text);

    FocusManager.instance.primaryFocus?.unfocus();
    await Future.delayed(const Duration(milliseconds: 500));

    await settle();
  };

  final scrollTop = ({Offset? scrollTo}) async {
    final screen = controller.getRect(find.byType(MaterialApp));

    await controller.dragFrom(
      screen.center,
      scrollTo ?? Offset(0, pow(10, 4).toDouble()),
    );

    await settle();
  };

  final scrollBottom = ({Offset? scrollTo}) async {
    final screen = controller.getRect(find.byType(MaterialApp));

    await controller.dragFrom(
      screen.center,
      scrollTo ?? Offset(0, -1 * pow(10, 4).toDouble()),
    );

    await settle();
  };

  return (
    scrollTop: scrollTop,
    scrollBottom: scrollBottom,
    settle: settle,
    enterText: enterText,
    swipeLeft: swipeLeft,
    swipeRight: swipeRight,
    waitUntilAppear: waitUntilAppear,
    waitUntilDisappear: waitUntilDisappear,
    tap: tap,
  );
};

class ActBuilder {
  final ActBuilder Function() settle;
  final ActBuilder Function(Finder on) tap;
  final ActBuilder Function(Finder on) swipeLeft;
  final ActBuilder Function(Finder on) swipeRight;
  final ActBuilder Function(Finder on, String text) enterText;
  final ActBuilder Function(Finder Function() selector) waitUntilAppear;
  final ActBuilder Function(Finder Function() selector) waitUntilDisappear;
  final ActBuilder Function({Offset? scrollTo}) scrollTop;
  final ActBuilder Function({Offset? scrollTo}) scrollBottom;
  final ActBuilder Function([String? title]) screenshot;
  final Future<Iterable<Screenshot>> Function() act;

  ActBuilder({
    required this.settle,
    required this.tap,
    required this.swipeLeft,
    required this.swipeRight,
    required this.enterText,
    required this.scrollTop,
    required this.scrollBottom,
    required this.waitUntilAppear,
    required this.waitUntilDisappear,
    required this.screenshot,
    required this.act,
  });
}
