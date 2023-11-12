import 'package:flutter/material.dart';

final createAppMaterial = (Widget home) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: home,
    );

final createAppHome = () => Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
      ),
      body: const Center(
        child: Text('HI'),
      ),
    );
