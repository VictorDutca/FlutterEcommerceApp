import 'package:MobileHub/ui/account_view.dart';
import 'package:MobileHub/ui/homeScreen_view.dart';
import 'package:MobileHub/ui/wishList_view.dart';
import 'package:flutter/material.dart';

class NavbarView extends StatefulWidget {
  NavbarView({Key key}) : super(key: key);

  @override
  _StateMainScreen createState() => _StateMainScreen();
}

class _StateMainScreen extends State<NavbarView> {
  int _selectedIndex = 0;
  List<Widget> list = [
    HomeScreenView(),
    AccountView(),
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
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Account",
              ),
            ],
          ),
        )));
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            backgroundColor: Colors.black,
            title: Text(
              'Sei sicuro',
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              'Chiudere MobileHub?',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 180,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("SI", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
        ) ??
        false;
  }
}
