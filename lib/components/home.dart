import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:healthcare/components/hello.dart';
import 'package:healthcare/components/login.dart';
import 'package:healthcare/components/notification.dart';
import 'package:healthcare/components/privacy.dart';
import 'package:healthcare/components/products.dart';
import 'package:healthcare/components/set.dart';
import 'package:healthcare/components/sign.dart';
import 'package:healthcare/components/terms.dart';
import 'package:share/share.dart';
import 'package:healthcare/components/Horizontal_ListView.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'health.dart';
import 'help.dart';
import 'offers.dart';
import 'orders.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/ad1.jpg'),
          AssetImage('assets/images/ad2.jpg'),
          AssetImage('assets/images/doc5.jpg'),
          AssetImage('assets/images/ad4.jpg'),
          AssetImage('assets/images/ad6.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.grey,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: Text('MedCare'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new Not()));
              }),
          new IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {
                Share.share("Share");
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("MedCare"),
              accountEmail: Text("medcare@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Icon(
                    Icons.person,
                    color: Colors.cyanAccent,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => new LoginApp())),
              child: ListTile(
                title: Text('Login'),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.redAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => new SignUp())),
              child: ListTile(
                title: Text('Sign In'),
                leading: Icon(
                  Icons.person_add,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Attachments And Reports'),
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new Health())),
                leading: Icon(
                  Icons.content_paste,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Offers'),
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new Not())),
                leading: Icon(
                  Icons.scatter_plot,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Consult'),
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new OrdersApp())),
                leading: Icon(
                  Icons.access_time,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Users Feedback'),
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new SettingApp())),
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          imageCarousel,
          Divider(),
          new Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  border: Border.all(color: Colors.grey, width: 1.0)),
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 40.0,
              ),
              child: new ListTile(
                title: new Text(
                  'Enter your location here',
                  style: TextStyle(color: Colors.grey, fontSize: 11.5),
                ),
                onTap: () => launch(
                    'https://www.google.com/search?rlz=1C1CHBF_enIN801IN802&sxsrf=ALeKk009V_ZGYjurpeEazY6hoG6GZcKclA:1595767226415&q=near+by+hospital&npsic=0&rflfq=1&rlha=0&rllag=13038906,80122873,3031&tbm=lcl&ved=2ahUKEwiJo7KV-OrqAhX_6XMBHcvWBK0QtgN6BAgNEAQ&rldoc=1#rlfi=hd:;si:;mv:[[13.117995311427249,80.28859205395506],[12.973173361007959,80.0108439460449]]'),
                leading: Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: new Text(
              'Symptoms',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          HorizontalList(),
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: new Text(
              'Specializations',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            height: 80,
            child: Hello(),
          ),
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: new Text(
              'Doctors',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            height: 300,
            child: Products(),
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
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new OrdersApp()));
              },
            ),
          )
        ],
      ),
    );
  }
}
