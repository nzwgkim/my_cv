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
      theme: ThemeData(
        primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(color: Colors.purple[100]),
        bannerTheme: MaterialBannerThemeData(backgroundColor: Colors.grey),
        splashColor: Colors.blue[50],
        textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
            bodyText1: TextStyle(fontSize: 18, backgroundColor: Colors.blue),
            bodyText2: TextStyle(fontSize: 14, color: Colors.blueGrey)),
      ),
      color: Colors.red,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text(_title)),
        body: TabPage(),
      ),
    );
  }
}
