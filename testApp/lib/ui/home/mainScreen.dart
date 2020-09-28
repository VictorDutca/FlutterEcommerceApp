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
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }
}
