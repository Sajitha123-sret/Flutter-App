import 'package:flutter/material.dart';
import 'package:healthcare/components/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  SharedPreferences preferences;
  bool forget = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(bottom: 20)),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Forget Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50.0, left: 20.0, right: 20.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              elevation: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: TextFormField(
                                  controller: _emailTextController,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    icon: Icon(
                                      Icons.email,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  // ignore: missing_return
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      Pattern pattern =
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                      RegExp regex = new RegExp(pattern);
                                      if (!regex.hasMatch(value))
                                        return 'Please make sure your email address is valid';
                                      else
                                        return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 12.0, left: 20.0, right: 20.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              elevation: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: TextFormField(
                                  controller: _passwordTextController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Reset Password",
                                    icon: Icon(
                                      Icons.lock_outline,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "The password field cannot be empty";
                                    } else if (value.length < 6) {
                                      return "the password has to be at least 6 characters long";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                70.0, 50.0, 70.0, 8.0),
                            child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                                elevation: 0.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  minWidth: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Submit",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20.0),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginApp()));
                              },
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Visibility(
                visible: forget ?? true,
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white.withOpacity(0.9),
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
