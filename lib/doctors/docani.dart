import 'package:flutter/material.dart';
import 'package:healthcare/consult/ani.dart';

class Sal extends StatefulWidget {
  @override
  _SalState createState() => _SalState();
}

class _SalState extends State<Sal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Dr.Annirudha Navode"),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image(
                  image: AssetImage("assets/doc2.png"),
                ),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    'Dr.Brijiesh Rupar',
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
                child: new Text("           BDS"),
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
                child: new Text("              MDS"),
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
                child: new Text("    22 Years"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Medical School",
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
                  "  Government Dental college & hospital",
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
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new Ani()));
              },
            ),
          )
        ],
      ),
    );
  }
}
