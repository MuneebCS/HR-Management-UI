import 'package:flutter/material.dart';
import 'package:hr_maangementf/HomePage.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 34,
                fontFamily: 'My10',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          )),
      title: "HR Mnaagement App",
      home: HomePage(),
    );
  }
}
