import 'package:flutter/material.dart';
import 'package:healthcare/doctors/fiveonion.dart';
import 'package:healthcare/doctors/fouronion.dart';
import 'package:healthcare/doctors/oneonion.dart';
import 'package:healthcare/doctors/threeonion.dart';
import 'package:healthcare/doctors/twoonion.dart';

class Orthopedists extends StatefulWidget {
  @override
  _OrthopedistsState createState() => _OrthopedistsState();
}

class _OrthopedistsState extends State<Orthopedists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Orthopedist"),
        ),
        body: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: FittedBox(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new OneOnion()));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.white60,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: sandContainer(),
                          ),
                          Container(
                              width: 300,
                              height: 300,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    image: AssetImage("assets/doc1.png")),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: FittedBox(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new TwoOnion()));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.white60,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: sandContainer(),
                          ),
                          Container(
                              width: 300,
                              height: 300,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    image: AssetImage("assets/doc1.png")),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: FittedBox(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new ThreeOnion()));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.white60,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: treeContainer(),
                          ),
                          Container(
                              width: 300,
                              height: 300,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    image: AssetImage("assets/doc1.png")),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: FittedBox(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new FourOnion()));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.white60,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: airContainer(),
                          ),
                          Container(
                              width: 300,
                              height: 300,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    image: AssetImage("assets/doc1.png")),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: FittedBox(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new FiveOnion()));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.white60,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: windContainer(),
                          ),
                          Container(
                              width: 300,
                              height: 300,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    image: AssetImage("assets/doc1.png")),
                              ))
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

  Widget sandContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "Dr.Yogesh Kumar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Orthopaedic Surgeon",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget soilContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "Dr.Shrirang Kulkarni",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Orthopaedic Surgeon",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget treeContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "Dr.Vinay Tantuway",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Orthopaedic Surgeon",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget airContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "Dr.Dibya Singha Das",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MS,Orthopaedic",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Orthopaedic Surgeon",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget windContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "Dr.Sujith Kumar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Orthopaedic Surgeon",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
