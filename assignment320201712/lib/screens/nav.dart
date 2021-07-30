import 'package:flutter/material.dart';
import 'package:assignment320201712/screens/home.dart';
import 'package:assignment320201712/screens/courses.dart';
import 'package:assignment320201712/screens/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentindex = 1;
  final tabs = [
    CoursePage(),
    HomePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black38,
        backgroundColor: Color(0xff2FC4B2),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Courses',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: tabs[_currentindex],
    );
  }
}
