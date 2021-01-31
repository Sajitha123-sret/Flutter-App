import 'package:flutter/material.dart';

class SettingApp extends StatefulWidget {
  @override
  _SettingAppState createState() => _SettingAppState();
}

class _SettingAppState extends State<SettingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Users Feedback"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your FeedBack!!",
                helperText: "You can say your opinion about this app",
                labelText: "User FeedBack",
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text(
                'Enter',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
