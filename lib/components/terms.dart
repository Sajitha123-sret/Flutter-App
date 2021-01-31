import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: new Text('Terms And Conditions'),
      ),
      body: new Center(
        child: new ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 10.0,
              child: Container(
                height: 40.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                            "PATIENT EMERGENCIES /n /n The Services are not a replacement for emergency services offered at hospitals and should not be accessed if it patient is in a critical condition. In Medical Emergency (defined hereunder), please contact emergency services and/or rush to the nearest hospitals."
                            ""))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
