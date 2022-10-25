import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen_3 extends StatefulWidget {
  @override
  _Screen_3State createState() => _Screen_3State();
}

class _Screen_3State extends State<Screen_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plutajući akcijski gumb'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.restorablePushReplacementNamed(context, 'home');
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.check),
      ),
    );
  }
}
