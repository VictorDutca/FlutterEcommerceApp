import 'package:flutter/material.dart';
import 'package:testApp/ui/account.dart';
import 'package:testApp/ui/home/homeScreen.dart';
import 'package:testApp/ui/myAppBar.dart';
import 'package:testApp/ui/wish.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _StateMainScreen createState() => _StateMainScreen();
}

class _StateMainScreen extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> list = [
    HomeScreen(),
    WishList(),
    Account(),
  ];
  void onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: SafeArea(
            child: Scaffold(
          body: list.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: onItemTaped,
            selectedItemColor: Colors.blueAccent,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("Wishlist"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text("Account"),
              ),
            ],
          ),
        )));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: Text(
              'Sei sicuro',
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              'Chiudere ShopyFast?',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("SI", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ) ??
        false;
  }
}
