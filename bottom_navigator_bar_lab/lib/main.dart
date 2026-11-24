import 'package:flutter/material.dart';

void main() {
  runApp(const BottomNavExample());
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    ScreenLabel('Home'),
    ScreenLabel('Alarm'),
    ScreenLabel('Business'),
    ScreenLabel('School'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation Bar'),
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
            setState(() {
              currentIndex = index;
            });
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

class ScreenLabel extends StatelessWidget {
  final String label;

  const ScreenLabel(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(label),
    );
  }
}