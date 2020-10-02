import 'package:flutter/material.dart';
import 'package:testApp/ui/home/homeScreen.dart';

class MyBottomNav extends StatefulWidget {
  MyBottomNav({Key key}) : super(key: key);
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<MyBottomNav> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Account",
            ),
          ],
        ));
  }
}
