import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:planner/stories/to_do/index.dart';

final createAppMaterial = (Widget home) => MaterialApp(
      title: 'Planner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: home,
    );

enum Page {
  IN_PROGRESS,
  TO_DO,
  DONE,
  THOUGHTS,
}

final createAppHome = () => HookBuilder(
      builder: (context) {
        final page = useState(Page.IN_PROGRESS);

        return Scaffold(
          extendBody: true,
          appBar: AppBar(title: _buildTitleByPage(page.value)),
          body: _buildWidgetByPage(page.value),
          floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            notchMargin: 12.0,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => page.value = Page.IN_PROGRESS,
                  icon: page.value == Page.IN_PROGRESS
                      ? const Icon(Icons.run_circle)
                      : const Icon(Icons.run_circle_outlined),
                ),
                IconButton(
                  onPressed: () => page.value = Page.TO_DO,
                  icon: page.value == Page.TO_DO
                      ? const Icon(Icons.business_center)
                      : const Icon(Icons.business_center_outlined),
                ),
                const SizedBox.square(dimension: 46.0),
                IconButton(
                  onPressed: () => page.value = Page.THOUGHTS,
                  icon: page.value == Page.THOUGHTS
                      ? const Icon(Icons.psychology)
                      : const Icon(Icons.psychology_outlined),
                ),
                IconButton(
                  onPressed: () => page.value = Page.DONE,
                  icon: page.value == Page.DONE
                      ? const Icon(Icons.check_circle)
                      : const Icon(Icons.check_circle_outline_outlined),
                ),
              ],
            ),
          ),
        );
      },
    );

final _buildTitleByPage = (Page page) => switch (page) {
      Page.TO_DO => const Text('TO DO'),
      Page.IN_PROGRESS => const Text('IN PROGRESS'),
      Page.THOUGHTS => const Text('THOUGHTS'),
      Page.DONE => const Text('DONE'),
    };

final _buildWidgetByPage = (Page page) => switch (page) {
      Page.TO_DO => const ToDo(),
      Page.IN_PROGRESS => const Text('World'),
      Page.THOUGHTS => const Text('By'),
      Page.DONE => const Text('Done'),
    };
