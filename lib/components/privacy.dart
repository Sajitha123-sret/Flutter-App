import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Privacy And Policy'),
      ),
      body: new Center(
        child: new Text('welcome'),
      ),
    );
  }
}
