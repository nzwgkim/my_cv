import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV',
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: TabBar(
              tabs: [
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    'Personal Details',
                  ),
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    'Summary',
                  ),
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    'Skills',
                  ),
                ),
                Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    'Experience',
                  ),
                ),
              ],
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  //배경 그라데이션 적용
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 77, 82, 225),
                    Color.fromARGB(255, 115, 232, 14),
                  ],
                ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  // for 1st tab...
                  color: Colors.yellow[100],
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // padding: const EdgeInsets.all(8),
                        width: 200,
                        height: 200,
                        // color: Colors.teal[100],
                        child: CircleAvatar(
                            backgroundImage: AssetImage('assets/woody.png')),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        //color: Colors.teal[200],
                        height: 300,
                        // width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Woody Wang-Gil Kim',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '95 Totaravale drive Totara Vale Auckland 0629',
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 15),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // for 2nd tab
                  color: Colors.yellow[200],
                  // alignment: Alignment.center,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: double.infinity,
                        decoration: BoxDecoration(
                          // border: Border.all(),
                          // borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(242, 214, 217, 147)
                                  .withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset:
                                  Offset(5, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'Expert Lead Web Developer specializing in front-end development',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(241, 217, 198, 147)
                                  .withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset:
                                  Offset(5, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'Experienced with all stages of development cycle for many projects',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(239, 187, 217, 147)
                                  .withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset:
                                  Offset(5, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'Well-versioned in languages for web frontend such as HTML, CSS, JS and Dart',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(240, 217, 185, 147)
                                  .withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset:
                                  Offset(5, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'Highly experienced in Embedded C/C++',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(240, 198, 217, 147)
                                  .withOpacity(0.7),
                              spreadRadius: 0,
                              blurRadius: 5.0,
                              offset:
                                  Offset(5, 10), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'Keen to challenge new technologies',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    // for 3rd tab
                    color: Colors.yellow[300],
                    alignment: Alignment.center,
                    child: Text('어쩌구 저쩌구...', style: TextStyle(fontSize: 30))),
                Container(
                  // for 4th tab
                  color: Colors.yellow[400],
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('어쩌구 저쩌구...', style: TextStyle(fontSize: 30)),
                      OutlinedButton(
                          onPressed: () async {
                            final url = Uri.parse(
                              'http://www.samsungshi.com/Eng/default.aspx',
                            );
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            } else {
                              // ignore: avoid_print
                              print("Can't launch $url");
                            }
                          },
                          child: const Text('Samsung Heavy Industries')),
                      OutlinedButton(
                        onPressed: () async {
                          final url = Uri.parse(
                            'http://www.mdnp.co.kr/',
                          );
                          if (await canLaunchUrl(url)) {
                            launchUrl(url);
                          } else {
                            // ignore: avoid_print
                            print("Can't launch $url");
                          }
                        },
                        child: const Text('G-Edu'),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 5.0, color: Colors.red),
                        ),
                        onPressed: () async {
                          final url = Uri.parse(
                            'http://www.kaonmedia.com/eng/main/',
                          );
                          if (await canLaunchUrl(url)) {
                            launchUrl(url);
                          } else {
                            // ignore: avoid_print
                            print("Can't launch $url");
                          }
                        },
                        child: const Text('Kaonmedia Co.,Ltd'),
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid))),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Icon(
                                      Icons.clear,
                                      size: 24,
                                    ))),
                            Text("Clear"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
