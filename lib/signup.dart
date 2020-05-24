import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obsureText1 = true;
  bool _obsureText2 = true;
  int selectitem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            imagePath: "assets/images/fifthpage.webp",
          ),
          BackgroundBackdropFilter(
            opacityValue: 0.4,
            blurX: 5,
            blurY: 5,
          ),
          BackArrow(),

          Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.height * 0.05,
                MediaQuery.of(context).size.height * 0.10,
                MediaQuery.of(context).size.height * 0.05,
                0.0),
            child: Form(
              child: new ListView(
                children: <Widget>[
                  _signUpTextFormField("First Name"),
                  _signUpTextFormField("Last Name"),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0,
                        MediaQuery.of(context).size.height * 0.025,
                        0,
                        MediaQuery.of(context).size.height * 0.02),
                    height: 30,
                    child: InkWell(
                      child: SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          child: Text(
                            'Date of Birth',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext builder) {
                              return Container(
                                height: MediaQuery.of(context)
                                    .copyWith()
                                    .size
                                    .height /
                                    3,
                                child: CupertinoDatePicker(
                                  initialDateTime: DateTime.now(),
                                  minimumYear: 1954,
                                  onDateTimeChanged: (DateTime newdate) {
                                    print(newdate);
                                  },
                                  mode: CupertinoDatePickerMode.date,
                                ),
                              );
                            });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0,
                        MediaQuery.of(context).size.height * 0.015,
                        0,
                        MediaQuery.of(context).size.height * 0.02),
                    height: 30,
                    child: InkWell(
                      child: SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          child: Text(
                            'Gender',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext builder) {
                              return Container(
                                height: MediaQuery.of(context)
                                    .copyWith()
                                    .size
                                    .height /
                                    5,
                                child: CupertinoPicker(
                                  backgroundColor: Colors.white,
                                  children: <Widget>[
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ],
                                  itemExtent: 38,
                                  //height of each item
                                  looping: false,
                                  onSelectedItemChanged: (int index) {
                                    selectitem = index;
                                  },
                                ),
                              );
                            });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0,
                        MediaQuery.of(context).size.height * 0.015,
                        0,
                        MediaQuery.of(context).size.height * 0.01),
                    height: 30,
                    child: InkWell(
                      child: SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          child: Text(
                            'Blood Type',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Futura",
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext builder) {
                              return Container(
                                height: MediaQuery.of(context)
                                    .copyWith()
                                    .size
                                    .height /
                                    4,
                                child: CupertinoPicker(
                                  backgroundColor: Colors.white,
                                  children: <Widget>[
                                    Text(
                                      "A +",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "A -",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "B +",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "B -",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "O +",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "O -",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "AB +",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      "AB -",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ],
                                  itemExtent: 40,
                                  //height of each item
                                  looping: false,
                                  onSelectedItemChanged: (int index) {
                                    selectitem = index;
                                  },
                                ),
                              );
                            });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0, MediaQuery.of(context).size.height * 0.01, 0, 0),
                    height: 40,
                    child: TextFormField(
                      obscureText: _obsureText1,
                      style: _passwordTextStyle(),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: _passwordTextStyle(),
                        focusedBorder: _passwordUnderLineInputBorder(),
                        enabledBorder: _passwordUnderLineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _obsureText1
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                            size: 16.0,
                          ),
                          onPressed: () {
                            setState(() {
                              _obsureText1 = !_obsureText1;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0,
                        MediaQuery.of(context).size.height * 0.02,
                        0,
                        MediaQuery.of(context).size.height * 0.01),
                    height: 40,
                    child: TextFormField(
                      obscureText: _obsureText2,
                      style: _passwordTextStyle(),
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: _passwordTextStyle(),
                        focusedBorder: _passwordUnderLineInputBorder(),
                        enabledBorder: _passwordUnderLineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _obsureText2
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                            size: 16.0,
                          ),
                          onPressed: () {
                            setState(() {
                              _obsureText2 = !_obsureText2;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.87,
            right: MediaQuery.of(context).size.width * 0.1,
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  0,
                  MediaQuery.of(context).size.height * 0.015,
                  0,
                  MediaQuery.of(context).size.height * 0.015),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(9),
                ),
                padding: EdgeInsets.all(9),
                hoverColor: Color.fromRGBO(255, 132, 124, 1),
                splashColor: Color.fromRGBO(255, 132, 124, 1),
                highlightColor: Color.fromRGBO(255, 132, 124, 1),
                child: Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(
                    fontFamily: "Futura",
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    FadeRoute(page: Login()),
                        (Route<dynamic> route) => false,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _signUpTextFormField(String textField) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height * 0.01,
          0, MediaQuery.of(context).size.height * 0.01),
      height: 40,
      child: TextFormField(
        style: TextStyle(
          fontSize: 18.0,
          fontFamily: "Futura",
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: textField,
          hintStyle: TextStyle(
            fontSize: 18.0,
            fontFamily: "Futura",
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:
            BorderSide(style: BorderStyle.solid, color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
            BorderSide(style: BorderStyle.solid, color: Colors.white),
          ),
        ),
      ),
    );
  }

  TextStyle _passwordTextStyle() {
    return TextStyle(
      fontSize: 18.0,
      fontFamily: "Futura",
      color: Colors.white,
    );
  }

  UnderlineInputBorder _passwordUnderLineInputBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white),
    );
  }
}
