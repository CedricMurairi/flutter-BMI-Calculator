import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      initialRoute: '/',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.blueAccent,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => Result(),
      },
    );
  }
}
