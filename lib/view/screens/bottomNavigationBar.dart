import 'package:flutter/material.dart';
import 'package:full_totars/view/screens/account.dart';
import 'package:full_totars/view/screens/butler.dart';
import 'package:full_totars/view/screens/mainpage.dart';
import 'package:full_totars/view/screens/oreder.dart';
import 'package:full_totars/view/screens/searchPage.dart';

class bootomNavigationBar extends StatefulWidget {
  const bootomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bootomNavigationBar> createState() => _bootomNavigationBarState();
}

class _bootomNavigationBarState extends State<bootomNavigationBar> {
  int selectedIndex = 0;
  final List<Widget> pages = <Widget>[

    mainPage(),
    searchPage(),
    butlerPage(),
    orderPage(),
    accountPage()

  ];
  void tabPageChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  pages[selectedIndex],

      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: tabPageChange,
        type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.star),label: "Butler"),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Account"),
      ],

      ),


    );
  }
}
