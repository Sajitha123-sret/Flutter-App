import 'package:flutter/material.dart';

class HelpUs extends StatefulWidget {
  @override
  _HelpUsState createState() => _HelpUsState();
}

class _HelpUsState extends State<HelpUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.redAccent,
          title: new Text('Help'),
        ),
        body: new ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 10.0,
              child: Container(
                height: 40.0,
                child: Row(
                  children: <Widget>[Expanded(child: Text('welcome'))],
                ),
              ),
            )
          ],
        ));
  }
}
