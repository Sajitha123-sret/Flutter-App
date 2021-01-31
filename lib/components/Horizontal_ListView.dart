import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/cats/stick.png',
            image_caption: 'Fever',
          ),
          Category(
            image_location: 'assets/cats/cold.png',
            image_caption: 'Cold',
          ),
          Category(
            image_location: 'assets/cats/stm.png',
            image_caption: 'Stomach Ache',
          ),
          Category(
            image_location: 'assets/cats/anex.png',
            image_caption: 'Anxiety',
          ),
          Category(
            image_location: 'assets/cats/dep.png',
            image_caption: 'Depression',
          ),
          Category(
            image_location: 'assets/cats/ear.png',
            image_caption: 'Ear Pain',
          ),
          Category(
            image_location: 'assets/cats/eye.png',
            image_caption: 'Eye Pain',
          ),
          Category(
            image_location: 'assets/cats/per.png',
            image_caption: 'Period issue',
          ),
          Category(
            image_location: 'assets/cats/hair.png',
            image_caption: 'HairFall',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 50,
                height: 50.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 10.0),
                ),
              )),
        ),
      ),
    );
  }
}
