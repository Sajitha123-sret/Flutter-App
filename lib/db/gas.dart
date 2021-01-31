import 'package:flutter/material.dart';
import 'package:healthcare/doctors/fivegas.dart';
import 'package:healthcare/doctors/fourgas.dart';
import 'package:healthcare/doctors/ilgas.dart';
import 'package:healthcare/doctors/threegas.dart';
import 'package:healthcare/doctors/twogas.dart';

class Specialist extends StatefulWidget {
  @override
  _SpecialistState createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Gastroenterologist"),
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
                          builder: (context) => new Ice()));
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
                          builder: (context) => new TwoGas()));
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
                          builder: (context) => new ThreeGas()));
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
                          builder: (context) => new FourGas()));
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
                          builder: (context) => new FiveGas()));
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
            "Dr.Ilavarasi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS, MD, DM",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Gastro-Enterologist",
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
            "Dr.Sheeta Dharphade",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS, MD, DM",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Gastro-Enterologist",
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
            "Dr.Rajesh Tandulwadkar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS, MS",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Gastro-Enterologist",
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
            "Dr.Neela Dilip Kushte",
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
            "Gastro-Enterologist",
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
            "Dr.Samir Ramnik Shah",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS , MD",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Gastro-Enterologist",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
