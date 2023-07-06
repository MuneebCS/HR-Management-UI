import 'package:flutter/material.dart';
import 'package:hr_maangementf/HomePage.dart';
import 'package:hr_maangementf/screens/HomePageContent.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    DateTime currentTime = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return ListTile(
                leading: Icon(Icons.language),
                title: Text('Personal Information',
                    style: TextStyle(fontSize: 18)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                onTap: () {},
              );
            } else if (index == 1) {
              return ListTile(
                leading: Icon(Icons.language),
                title: Text('Language', style: TextStyle(fontSize: 18)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                onTap: () {},
              );
            } else if (index == 2) {
              return ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Date', style: TextStyle(fontSize: 18)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                onTap: () async {
                  DateTime? datepicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030));
                },
              );
            } else if (index == 3) {
              return ListTile(
                leading: Icon(Icons.color_lens),
                title: Text('Budget', style: TextStyle(fontSize: 18)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                onTap: () {},
              );
            } else if (index == 4) {
              return ListTile(
                leading: Icon(Icons.brightness_6),
                title: Text('Theme', style: TextStyle(fontSize: 18)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                onTap: () {},
              );
            } else {
              return ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications', style: TextStyle(fontSize: 18)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                onTap: () {},
              );
            }
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: 6,
        ),
      ),
    );
  }
}
