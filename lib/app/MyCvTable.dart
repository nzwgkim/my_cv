import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCvTable extends StatelessWidget {
  const MyCvTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.blue,
              child:
                  CircleAvatar(backgroundImage: AssetImage('assets/woody.png')),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  Wang-Gil Kim',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    '95 Totaravale drive Totara Vale Auckland 0629',
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              height: 32,
              color: Colors.green,
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          children: <Widget>[
            Container(
              height: 64,
              width: 128,
              color: Colors.purple,
            ),
            Container(
              height: 32,
              color: Colors.yellow,
            ),
            Center(
              child: Container(
                height: 32,
                width: 32,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyCv extends StatelessWidget {
  const MyCv({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      padding: const EdgeInsets.all(8.0),
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              'assets/woody.png',
              // height: 300,
              width: 100,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '  Wang-Gil Kim',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Container(
                  child: Text(
                    '95 Totaravale drive Totara Vale Auckland 0629',
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
