import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  @override
  _NotState createState() => _NotState();
}

class _NotState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Notifications'),
        ),
        body: new ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: FittedBox(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Colors.black12,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: cellContainer(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget cellContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              child: Text(
            "Today's Offer",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              child: Text(
            "If you consult a Gynaecologist",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              child: Text(
            'you get an OFF of 20%',
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
