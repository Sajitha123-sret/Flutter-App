import 'package:flutter/material.dart';
import 'package:healthcare/consult/gynetwo.dart';

class Apple extends StatefulWidget {
  @override
  _AppleState createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Dr.Ajit Patil'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image(
                  image: AssetImage("assets/doc1.png"),
                ),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    'Dr.Ajit Patil',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          new ListTile(
            title: new Text("Details"),
            subtitle: new Text("We are providing the details of the Doctor"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Education",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Under Graduate",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("           MBBS"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Post Graduate",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("              MD"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Experience/Training",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("    28 Years"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Hospital Affiliations",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "  Pristine Womens Hospital",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text(
                'Consult Now',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new TwoGarlic()));
              },
            ),
          )
        ],
      ),
    );
  }
}
