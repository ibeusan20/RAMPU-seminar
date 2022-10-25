
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea( child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('navigacija@foi.hr'),
              accountName: Text('FOI Student'),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/4571943/pexels-photo-4571943.jpeg?cs=srgb&dl=pexels-arthouse-studio-4571943.jpg&fm=jpg'),),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () =>
                  Navigator.restorablePushReplacementNamed(context, 'home'),
            ),
            ListTile(
              title: Text('Screen_2'),
              leading: Icon(Icons.agriculture),
              onTap: () =>
                  Navigator.pushNamed(context, 'screen_2'),
            ),
            ListTile(
              title: Text('Screen_3'),
              leading: Icon(Icons.auto_awesome),
              onTap: () =>
                  Navigator.pushNamed(context, 'screen_3'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
