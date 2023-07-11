import 'package:activity/Secreen/on_boarding.dart';
import 'package:flutter/material.dart';
import 'Secreen/activity.dart';
import 'Secreen/buttom_navigation_bar.dart';
import 'Secreen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'bording': (context) => OnBoarding(),
        'activity': (context) => ButtomNavigationBar(),
      },
    );
  }
}
