import 'package:flutter/material.dart';
import 'package:healthcare/doctors/net.dart';
import 'package:healthcare/doctors/road.dart';
import 'package:healthcare/doctors/sammy.dart';
import 'package:healthcare/doctors/san.dart';
import 'package:healthcare/doctors/voot.dart';

class Enters extends StatefulWidget {
  @override
  _EntersState createState() => _EntersState();
}

class _EntersState extends State<Enters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ENT Specialist"),
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
                          builder: (context) => new San()));
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
                          builder: (context) => new Road()));
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
                          builder: (context) => new Voot()));
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
                          builder: (context) => new Sammy()));
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
                          builder: (context) => new Net()));
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
            "Dr.Vrunda Deshpande",
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
            "ENT Surgeon",
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
            "Dr.Roopali Jain Tripathi ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS, DNB",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "ENT Surgeon",
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
            "Dr.Vinaya Chitale",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS, MD",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "ENT Surgeon",
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
            "Dr.Syed Mushtaq",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
              child: Text(
            "MBBS, DNB",
            style: TextStyle(fontSize: 35.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "ENT Surgeon",
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
            "Dr.Neeraj Suri",
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
            "ENT Surgeon, Speech Specialist",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
