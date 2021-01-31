import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/db/Orthopedist.dart';
import 'package:healthcare/db/Uro.dart';
import 'package:healthcare/db/dentist.dart';
import 'package:healthcare/db/enter.dart';
import 'package:healthcare/db/gas.dart';
import 'package:healthcare/db/gynecologist.dart';
import 'package:healthcare/db/neuro.dart';
import 'package:healthcare/db/opththalmologist.dart';
import 'package:healthcare/db/pul.dart';

class OrdersApp extends StatefulWidget {
  @override
  _OrdersAppState createState() => _OrdersAppState();
}

class _OrdersAppState extends State<OrdersApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Consult'),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Dentist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: detailsContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 1000,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/den.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Gynecologists()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: gyContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 1000,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/preg.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Enters()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: earContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 1000,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image:
                                      AssetImage("assets/images/entear.jpeg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Specialist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: gasContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 800,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image:
                                      AssetImage("assets/images/gastro.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Neurologist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: neuContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 800,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/neu.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Ophthalmologist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: wordContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 800,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/opth.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Orthopedists()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: oralContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 800,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/ortho.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (context) => new Pul()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: bookContainer(),
                        ),
                        Container(
                            width: 500,
                            height: 800,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/pul.jpg")),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: FittedBox(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new Urologist()));
                  },
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: bagContainer(),
                        ),
                        Container(
                            width: 800,
                            height: 800,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/images/ur.jpg")),
                            ))
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

  Widget detailsContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Dentist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A person who is qualified to treat diseases and",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Other conditions that affect teeth and gums,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Especially the repair and",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Extraction of teeth",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget gyContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Gynaecologist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A physician who specializes in treating disease",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "of the female reproductive organs and providing well,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "providing well woman health care that focuses",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "primarily on the reproductive organs",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget earContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "ENT Specialist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A specialist who is concerned with diagnosis",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "and treatment of the disorders of  ,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "head and neck,including particularly",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "ears, nose and throat",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget gasContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Gastroenterologist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A doctors who are trained to diagnose and ",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "and treat problems in your  ,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "gastrointestinaal(GI) tract and",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "liver",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget neuContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Neurologist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A doctor who treats disorders that affect",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "the brain, spinal cord, and nerves ",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "such as: Cerebrovascular diseases",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            " such as stoke.",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget wordContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Ophthalmologist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A specialist in the branch of medicine",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "concerned with the study and ,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "treatment of disorders and",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "diseases of eye",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget oralContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Orthopedist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "A specialist who concerned with the correction or",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "prevention of deformities, disorders, or,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "injuries of the skeleton and associated",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "structures",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget bookContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Pulmonologist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Pulmonology is an area of medicine that focus on",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "health of the respiratory system ,",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Pulmonologists treat everything from",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "asthma to tuberculosis",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }

  Widget bagContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
              child: Text(
            "Urologist",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "Urologist is a physician who specializes",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "in disease of the urinary tract,kidneys",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "and adrenal glands.",
            style: TextStyle(fontSize: 30.0),
          )),
        ),
      ],
    );
  }
}
