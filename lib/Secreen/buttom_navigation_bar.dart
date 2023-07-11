import 'package:activity/Secreen/statistics.dart';
import 'package:activity/Secreen/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Date.dart';
import 'activity.dart';
import '../component/constant.dart';

class ButtomNavigationBar extends StatefulWidget {
  // ButtomNavigationBar({});

  @override
  State<ButtomNavigationBar> createState() => _ButtomNavigationBarState();
}

class _ButtomNavigationBarState extends State<ButtomNavigationBar> {
  int _selectedIndex = index;
  final List<Widget> _pages = [
    Activity(),
    Statistics(),
    Date(),
    Time(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Gelender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'Time',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
