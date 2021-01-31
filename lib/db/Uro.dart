import 'package:flutter/material.dart';

class Urologist extends StatefulWidget {
  @override
  _UrologistState createState() => _UrologistState();
}

class _UrologistState extends State<Urologist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Urologist"),
      ),
      body: new Center(
        child: new Text('wel'),
      ),
    );
  }
}
