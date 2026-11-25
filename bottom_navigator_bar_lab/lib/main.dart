import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TabModel(),
      child: const BottomNavLab(),
    ),
  );
}

class TabModel extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

class BottomNavLab extends StatelessWidget {
  const BottomNavLab({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<TabModel>().selectedIndex;

    const screens = [
      Screen1(),
      Screen2(),
      Screen3(),
      Screen4(),
    ];

    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lab 05 Bottom Navigation Bar'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          backgroundColor: Colors.blue,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (int index) {
            context.read<TabModel>().setSelectedIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}