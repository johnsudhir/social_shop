import 'package:digital_stores/screens/chat/Chats.dart';
import 'package:digital_stores/screens/nav_categories/categories.dart';
import 'package:digital_stores/screens/home/Home.dart';
import 'package:digital_stores/screens/settings/Settings.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);
  static const String mainPage = 'MainPage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> navigationWidgets = <Widget>[
    //TODO: add a instance of nav bar components in order if page is made and dont forget to add that page in route
    Home(),
    Categories(),
    Chats(),
    Settings(),


  ];
  int _tappedItemIndex = 0;
  //When Tapped on Navigation Bar.
  void _itemTapped(int index) {
    setState(() {
      _tappedItemIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Store'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),

      ),
      body: Center(
          child: navigationWidgets.elementAt(_tappedItemIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tappedItemIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home
            ),
            label: 'Home',
            backgroundColor: Colors.white
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
        ],
        onTap: _itemTapped,
        selectedItemColor: Colors.amber[800],


      ),
    );
  }
}
