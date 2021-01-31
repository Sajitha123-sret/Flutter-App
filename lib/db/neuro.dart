import 'package:flutter/material.dart';
import 'package:healthcare/doctors/fiveneuro.dart';
import 'package:healthcare/doctors/fourneuro.dart';
import 'package:healthcare/doctors/oneneuro.dart';
import 'package:healthcare/doctors/threeNeuro.dart';
import 'package:healthcare/doctors/twoneuro.dart';

class Neurologist extends StatefulWidget {
  @override
  _NeurologistState createState() => _NeurologistState();
}

class _NeurologistState extends State<Neurologist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Neurologist"),
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
                          builder: (context) => new OneNeurologist()));
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
                          builder: (context) => new TwoNeurologist()));
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
                          builder: (context) => new ThreeNeurologist()));
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
                          builder: (context) => new FourNeurologist()));
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
                          builder: (context) => new FiveNeurologist()));
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
            "Dr.Piroja N.Waid",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "DCH",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Neurologist",
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
            "Dr.R.Jain",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "DPM",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Neurologist,Psychiatrist",
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
            "Dr.Prashant Khandelwal",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MS,MCH",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Neuro-Surgeon Neurologist",
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
            "Dr.Rujata Samprasad Vinod",
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
            "Neurologist",
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
            "Dr.Hemant Madhukar Sant",
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
            "Neurologist",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
