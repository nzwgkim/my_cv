import 'package:flutter/material.dart';

class dialPad extends StatelessWidget {
  const dialPad({super.key});
  final List<String> items = const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '*',
    '0',
    '#'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3, // 열 개수
        children: List<Widget>.generate(
          items.length,
          (idx) {
            return Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                items[idx],
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            );
          },
        ).toList());
  }
}
