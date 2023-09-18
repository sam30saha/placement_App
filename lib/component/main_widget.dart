import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:placement/pages/Internship/internship_page.dart';
import 'package:placement/pages/Job/job_page.dart';
import 'package:placement/pages/Vlog/vlog_page.dart';
import 'package:placement/pages/account/account_page.dart';
import 'package:placement/pages/home/home_page.dart';

class MainWidget extends StatefulWidget {
  int _selectedIndex = 0;
  MainWidget(this._selectedIndex);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    JobPage(),
    InternshipPage(),
    MyHomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromARGB(255, 10, 38, 71),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        // backgroundColor: Colors.grey[100],
        // leading: InkWell(
        //   child: Padding(
        //     padding: EdgeInsets.all(5),
        //     child: CircleAvatar(
        //       backgroundImage: NetworkImage(
        //           "https://media.licdn.com/dms/image/D4D03AQEV6Mfb7EABRA/profile-displayphoto-shrink_800_800/0/1663575014178?e=1686787200&v=beta&t=25cx2bRJQu997CO136FbMz9QMwEPUWdGldA825T4z7Q"),
        //     ),
        //   ),
        //   onTap: () {},
        // ),
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Place",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromARGB(255, 10, 38, 71))),
                  TextSpan(
                    text: "ment",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 32, 82, 149),
                    ),
                  ),
                ]),
              ),
              InkWell(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/3/35/Supermanflying.png"),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AccountPage()));
                  }),
            ],
          ),
        ),
      ),
      body: _widgetOptions[widget._selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 10, 38, 71),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel_rounded,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.near_me_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Internship',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Blog',
          ),
        ],
        currentIndex: widget._selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        onTap: _onItemTapped,
      ),
    );
  }
}
