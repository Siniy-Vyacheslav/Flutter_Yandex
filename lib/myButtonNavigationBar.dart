import 'package:flutter/material.dart';

class MyButtonNavigationBar extends StatefulWidget {
  @override
  State createState() => _MyButtonNavigationBarState();
}

class _MyButtonNavigationBarState extends State<MyButtonNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          title: Text('Main'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.feedback),
          title: Text('Feed'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          title: Text('Radio'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text('My music'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
      ],
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.orange,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
