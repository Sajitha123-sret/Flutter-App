import 'package:flutter/material.dart';
import 'package:healthcare/doctors/fiveop.dart';
import 'package:healthcare/doctors/fourop.dart';
import 'package:healthcare/doctors/oneOp.dart';
import 'package:healthcare/doctors/threeop.dart';
import 'package:healthcare/doctors/twoOp.dart';

class Ophthalmologist extends StatefulWidget {
  @override
  _OphthalmologistState createState() => _OphthalmologistState();
}

class _OphthalmologistState extends State<Ophthalmologist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Ophthalmologist"),
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
                          builder: (context) => new OneOrange()));
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
                          builder: (context) => new TwoOrange()));
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
                          builder: (context) => new ThreeOrange()));
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
                          builder: (context) => new FourOrange()));
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
                          builder: (context) => new FiveOrange()));
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
            "Dr.Abhishek Sharma",
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
            "Ophthalmologist",
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
            "Dr.Kadambari Rajeev Yande",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Ophthalmologist",
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
            "Dr.Sangeeta S Wagh",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Ophthalmologist",
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
            "Dr.Hemant Sankar Todkar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Ophthalmologist",
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
            "Dr.Hemata Rao Thorat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Ophthalmologist",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
