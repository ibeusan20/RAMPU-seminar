

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation1/tabs/bottom/bottom_1.dart';
import 'package:navigation1/tabs/bottom/bottom_2.dart';
import 'package:navigation1/tabs/bottom/bottom_3.dart';

class Screen_2 extends StatefulWidget {
  @override
  _Screen_2State createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2>{
  int _index = 0;
  final List<Widget> _bottomTabs = [Bottom_1(), Bottom_2(), Bottom_3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donja navigacija'),
      ),
      body: _bottomTabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.add_home_work),
            label: 'Bottom tab 1',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.campaign_rounded),
            label: 'Bottom tab 2',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.flag),
            label: 'Bottom tab 3',
          ),
        ],
      ),
    );
  }
}