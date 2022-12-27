import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCvGridTable extends StatelessWidget {
  const MyCvGridTable({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          color: Colors.teal[100],
          child: CircleAvatar(backgroundImage: AssetImage('assets/woody.png')),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(
                onPressed: () async {
                  final url = Uri.parse(
                    'https://my-humble.netlify.app',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: const Text('Web Link'),
              ),
              Text(
                'Woody Wang-Gil Kim',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '95 Totaravale drive Totara Vale Auckland 0629',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              OutlinedButton(
                onPressed: () async {
                  final url = Uri(
                    scheme: 'mailto',
                    path: 'wgkim00@gmail.com',
                    query: 'subject=Hello&body=Test',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: Row(
                  children: [
                    const Icon(Icons.email),
                    const Text('wgkim00@gmail.com'),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () async {
                  // final url = Uri.parse('tel:+1 555 010 999');
                  final url = Uri.parse('tel:027 588 6597');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: Row(
                  children: [
                    const Icon(Icons.phone_android),
                    const Text('027 588 6597'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final url = Uri.parse('sms:5550101234');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: const Text('SMS'),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[300],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.star),
                  Text(
                    'PERSONAL PROFILE',
                    style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              Text(
                'A passionate Software Engineer with good performance',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              Text(
                'A passionate Software Engineer with good performance',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              Text(
                'A passionate Software Engineer with good performance',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              Text(
                'A passionate Software Engineer with good performance',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              Text(
                'A passionate Software Engineer with good performance',
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.star),
                  const Text('SKILLS'),
                ],
              ),
              const Text('Languages: Dart, C, C++, HTML/CSS/JS(React)'),
              const Text('Tools: Flutter, VS Code, MS Office'),
              const Text('OS: Linux, VxWorks, MS Windows'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[500],
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.access_alarm),
                  const Text(
                    'Education',
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('IT(L8)'),
                  const Text(
                    'UUNZ',
                  ),
                  const Text('NZ'),
                ],
              ),
              Row(
                children: [
                  const Text('Electronic(Master)'),
                  const Text(
                    'KNU',
                  ),
                  const Text('KR'),
                ],
              ),
              Row(
                children: [
                  const Text('Electronic(Bachelor)'),
                  const Text(
                    'KNU',
                  ),
                  const Text('KR'),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[600],
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.star),
                  const Text('Work Experience'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star),
                  Text('Zion Motorhomes'),
                  Text('NZ'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star),
                  Text('Zion Motorhomes'),
                  Text('NZ'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star),
                  Text('Zion Motorhomes'),
                  Text('NZ'),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[700],
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.star),
                  const Text('Work Experience'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star),
                  Text('Zion Motorhomes'),
                  Text('NZ'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star),
                  Text('Zion Motorhomes'),
                  Text('NZ'),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star),
                  Text('Zion Motorhomes'),
                  Text('NZ'),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () async {
                  final url = Uri.parse(
                    'https://my-humble.netlify.app',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: const Text('Web Link'),
              ),
              OutlinedButton(
                onPressed: () async {
                  final url = Uri(
                    scheme: 'mailto',
                    path: 'wgkim00@gmail.com',
                    query: 'subject=Hello&body=Test',
                  );
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: Row(
                  children: [
                    const Icon(Icons.email),
                    const Text('wgkim00@gmail.com'),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () async {
                  // final url = Uri.parse('tel:+1 555 010 999');
                  final url = Uri.parse('tel:027 588 6597');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: Row(
                  children: [
                    const Icon(Icons.phone_android),
                    const Text('027 588 6597'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final url = Uri.parse('sms:5550101234');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: const Text('SMS'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
