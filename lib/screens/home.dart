import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation1/nav_drawer.dart';
import 'package:navigation1/tabs/top/top_1.dart';
import 'package:navigation1/tabs/top/top_2.dart';
import 'package:navigation1/tabs/top/top_3.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Naslov Home ekrana'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home),),
              Tab(text: 'Tab_2', icon: Icon(Icons.catching_pokemon),),
              Tab(text: 'Tab_3', icon: Icon(Icons.celebration),),
            ],
          ),
        ),
        drawer: NavDrawer(),
        body: TabBarView(children: [
          Top_1(),
          Top_2(),
          Top_3(),
        ],)
      ),
    );
  }
}
