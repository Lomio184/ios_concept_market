import 'package:flutter/material.dart';
import 'package:market/screens/fruit/fruitScreen.dart';
import 'package:market/screens/search/searchScreen.dart';
import 'package:market/screens/vegetable/vegeScreen.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screenSet = [
    Homebody(),
    FruitScreen(),
    VegeScreen(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: _screenSet[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.black26.withOpacity(.25),
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => {
          setState((){
            _currentIndex = index;
          })
        },
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room),
            title: Text(
              'Today'
            )
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.backpack),
            title: Text(
              'Fruit'
            )
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            title: Text(
              'Vege'
            )
          ),
          new BottomNavigationBarItem(
            icon : Icon(Icons.gavel),
            title: Text(
              'Search'
            )
          )
        ],
      ),
    );
  }
}
