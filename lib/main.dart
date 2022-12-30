import 'package:flutter/material.dart';
import 'package:my_cv/app/myCvTabPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String _title = "Woody's CV";

    return MaterialApp(
      title: _title,
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text(_title)),
        body: TabPage(),
      ),
    );
  }
}
