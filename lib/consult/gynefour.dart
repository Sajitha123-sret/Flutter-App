import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FourGarlic extends StatefulWidget {
  @override
  _FourGarlicState createState() => _FourGarlicState();
}

class _FourGarlicState extends State<FourGarlic> {
  bool checkboxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Consult Now"),
      ),
      body: ListView(
        children: <Widget>[
          Text("You can consult a doctor by making call",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text(
                ' Click here to Call',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () => launch("tel://9977646587"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Book an Appointment',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Available Time Slots',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "23", "AUGUST", "Consultation", "Sunday 9am to 11.30am"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "24", "AUGUST", "Consultation", "Monday 10am to 12.30pm"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "25", "AUGUST", "Consultation", "Tuesday 8am to 12.30am"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "26", "AUGUST", "Consultation", "Wednesday 8am to 1.00am"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "27", "AUGUST", "Consultation", "Thursday 9am to 11.30am"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "28", "AUGUST", "Consultation", "Friday 10am to 11.30am"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "29", "AUGUST", "Consultation", "Saturday 9am to 11.00am"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "30", "AUGUST", "Consultation", "Sunday 10am to 2pm"),
                Checkbox(
                    value: checkboxvalue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkboxvalue = value;
                      });
                    }),
                timeSlotWidget(
                    "31", "AUGUST", "Consultation", "Monday 9am to 11.30am"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text(
                'Click to book an Appointment',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {},
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Payments using Paytm",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              child: Text(
                ' paytm',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () => launch("https://paytm.com"),
            ),
          ),
        ],
      ),
    );
  }

  Container timeSlotWidget(
      String date, String month, String slotType, String time) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white60,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Container(
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9)),
                color: Colors.black12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$date",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 7,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "$month",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 4,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$slotType",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800),
                ),
                Text(
                  "$time",
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
