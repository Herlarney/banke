// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_124/welcome.dart';

bool? checkBoxValue = false;

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: "DMSans",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    height: 50,
                    width: 319,
                    child: Text(
                      'please provide the following details for your new account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "DMSans",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xff7165E3),
                          ),
                          borderRadius: (BorderRadius.circular(10)),
                        ),
                        hintText: "full name",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xff7165E3),
                          ),
                          borderRadius: (BorderRadius.circular(10)),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xff7165E3),
                          ),
                          borderRadius: (BorderRadius.circular(10)),
                        ),
                        hintText: "Email address",
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xff7165E3),
                          ),
                          borderRadius: (BorderRadius.circular(10)),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff7165E3),
                            ),
                            borderRadius: (BorderRadius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff7165E3),
                            ),
                            borderRadius: (BorderRadius.circular(10)),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                          )),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: 30,
                      child: Row(children: <Widget>[
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xff7165E3),
                          ),
                          child: Checkbox(
                            value: checkBoxValue,
                            onChanged: (value) {
                              setState(() {
                                checkBoxValue = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            height: 40,
                            child: Text(
                              'By creating your account, you agree to our terms and condition',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 13,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        // ignore: avoid_print
                        print(
                          'pressed Sign up',
                        );
                      },
                      color: Color(0xff7165E3),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        // ignore: avoid_print
                        print(
                          'pressed Sign up Phone number',
                        );
                      },
                      color: Color(0xff7165E3),
                      child: Text(
                        'Sign up with Phone number',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 5,
                    width: 133,
                    margin: EdgeInsets.symmetric(horizontal: 140),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: Color(0xff7165E3),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
