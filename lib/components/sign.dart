import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/components/login.dart';
import 'package:healthcare/db/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  UserServices _userServices = UserServices();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _confirmpasswordTextController =
      TextEditingController();
  String gender;
  String groupValue = "male";
  SharedPreferences preferences;
  bool loading = false;
  bool hidePass = true;
  bool isLogedin = false;

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
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: TextFormField(
                      controller: _nameTextController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                        icon: Icon(
                          Icons.person,
                          color: Colors.redAccent,
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "The Name field cannot be empty";
                        } else if (value.length < 6) {
                          return "the Name has to be at least 2 characters long";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: Center(
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
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
                                top: 10.0, left: 10.0, right: 10.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(35.0),
                              color: Colors.white,
                              elevation: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: ListTile(
                                    title: TextFormField(
                                      controller: _passwordTextController,
                                      obscureText: hidePass,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        icon: Icon(
                                          Icons.lock_open,
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
                                    trailing: IconButton(
                                        icon: Icon(Icons.remove_red_eye),
                                        onPressed: () {
                                          setState(() {
                                            hidePass = false;
                                          });
                                        })),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 10.0, right: 10.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white,
                              elevation: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: ListTile(
                                    title: TextFormField(
                                      controller:
                                          _confirmpasswordTextController,
                                      obscureText: hidePass,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Confirm Password",
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
                                        } else if (_passwordTextController
                                                .text !=
                                            value) {
                                          return "Password does not match!!!";
                                        }
                                        return null;
                                      },
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(Icons.remove_red_eye),
                                        onPressed: () {
                                          setState(() {
                                            hidePass = false;
                                          });
                                        })),
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: ListTile(
                                title: Text(
                                  "Male",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.end,
                                ),
                                trailing: Radio(
                                    value: "male",
                                    groupValue: groupValue,
                                    onChanged: (e) => valueChanged(e)),
                              )),
                              Expanded(
                                  child: ListTile(
                                title: Text(
                                  "Female",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.end,
                                ),
                                trailing: Radio(
                                    value: "female",
                                    groupValue: groupValue,
                                    onChanged: (e) => valueChanged(e)),
                              )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                                left: 40.0,
                                right: 40.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              color: Colors.white,
                              onPressed: () {
                                validateForm();
                              },
                              child: Text(
                                "Register",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 22.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) => new LoginApp()));
                              },
                              child: Text(
                                " Already Registered ?? Login",
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
                visible: loading ?? true,
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
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

  valueChanged(e) {
    setState(() {
      if (e == "male") {
        groupValue = e;
        gender = e;
      } else if (e == "female") {
        groupValue = e;
        gender = e;
      }
    });
  }

  Future validateForm() async {
    FormState formState = _formKey.currentState;
    if (formState.validate()) {
      formState.reset();
      FirebaseUser user = await firebaseAuth.currentUser();
      if (user == null) {
        firebaseAuth
            .createUserWithEmailAndPassword(
                email: _emailTextController.text,
                password: _passwordTextController.text)
            .then((user) => {
                  _userServices.createUser({
                    "username": _nameTextController,
                    "email": _emailTextController,
                    "gender": gender,
                  })
                })
            .catchError((err) => {print(err.toString())});
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    }
  }
}
