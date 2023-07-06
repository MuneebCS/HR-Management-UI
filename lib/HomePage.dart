import 'package:flutter/material.dart';
import 'package:hr_maangementf/screens/HomePageContent.dart';
import 'package:hr_maangementf/screens/ProfilePage.dart';
import 'package:hr_maangementf/screens/Settings.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    ProfilePage(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(26.0),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              backgroundColor: Color.fromARGB(255, 23, 22, 47),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              selectedIconTheme: IconThemeData(color: Colors.white),
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              selectedFontSize: 12.0,
              unselectedFontSize: 10.0,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
