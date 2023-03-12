import 'package:flutter/material.dart';
import 'package:first0302/mainpage/board.dart';
import 'package:first0302/mainpage/friend.dart';
import 'package:first0302/mainpage/home.dart';
import 'package:first0302/mainpage/mypage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: 'home',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: 'board',
      icon: Icon(Icons.space_dashboard),
    ),
    BottomNavigationBarItem(
      label: 'friend',
      icon: Icon(Icons.supervisor_account),
    ),
    BottomNavigationBarItem(
      label: 'my page',
      icon: Icon(Icons.account_circle),
    ),
  ];
  List pages = [
    Home(),
    Board(),
    Friend(),
    Mypage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('home'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 204, 157, 157),
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
