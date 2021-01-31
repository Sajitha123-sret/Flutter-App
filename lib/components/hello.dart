import 'package:flutter/material.dart';
import 'package:healthcare/db/Orthopedist.dart';
import 'package:healthcare/db/dentist.dart';
import 'package:healthcare/db/enter.dart';
import 'package:healthcare/db/gas.dart';
import 'package:healthcare/db/gynecologist.dart';
import 'package:healthcare/db/neuro.dart';
import 'package:healthcare/db/opththalmologist.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 1.0, 10.0, 1.0),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(1.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Dentist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/den.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 20.0, 6.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Neurologist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/neu.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 20.0, 6.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Gynecologists()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/preg.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 20.0, 6.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Enters()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/entear.jpeg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 20.0, 6.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Ophthalmologist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/opth.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 20.0, 6.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Orthopedists()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/ortho.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 20.0, 6.0),
              child: FittedBox(
                child: RaisedButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Specialist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 5000,
                          height: 3000,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(26.0),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/gastro.jpg")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
