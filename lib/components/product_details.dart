import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/consult/ani.dart';

class ProductDetails extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final pro_detail_name;
  // ignore: non_constant_identifier_names
  final pro_detail_picture;
  // ignore: non_constant_identifier_names
  final pro_edu;
  // ignore: non_constant_identifier_names
  final pro_under;
  // ignore: non_constant_identifier_names
  final pro_exp;
  // ignore: non_constant_identifier_names
  final pro_med;

  ProductDetails({
    // ignore: non_constant_identifier_names
    this.pro_detail_name,
    // ignore: non_constant_identifier_names
    this.pro_detail_picture,
    // ignore: non_constant_identifier_names
    this.pro_edu,
    // ignore: non_constant_identifier_names
    this.pro_under,
    // ignore: non_constant_identifier_names
    this.pro_exp,
    // ignore: non_constant_identifier_names
    this.pro_med,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: Text('MedCare'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.pro_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.pro_detail_name,
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 5.0),
                child: new Text(
                  "Under  Graduate",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  widget.pro_edu,
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  "Post Graduate",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  widget.pro_under,
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  "Experience",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  widget.pro_exp,
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  "Medical School",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 4.0, 5.0, 4.0),
                child: new Text(
                  widget.pro_med,
                ),
              )
            ],
          ),
          new Padding(
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
