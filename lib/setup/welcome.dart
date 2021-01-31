import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/components/login.dart';

import 'package:healthcare/components/sign.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.redAccent,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(bottom: 30)),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 44,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 20)),
            SizedBox(
              height: 60,
            ),
            Text(
              "Medicine is a science of uncertainty and an art of Probability",
              maxLines: 4,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 70)),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 25.0, right: 25.0),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginApp()));
                })
          ],
        ),
      )),
    ));
  }
}
