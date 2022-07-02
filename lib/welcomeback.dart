// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          // ignore: prefer_const_constructors
          physics: AlwaysScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    'Welcome back!',
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
                    'Sign in to continue',
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
                  height: 75,
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
                Container(
                  alignment: Alignment.centerRight,
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      // ignore: avoid_print
                      print(
                        'forgot password button pressed',
                      );
                    },
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                  height: 30,
                ),
                GestureDetector(
                  onTap: () => print('Sign up got pressed'),
                  child: RichText(
                      // ignore: prefer_const_literals_to_create_immutables
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Dont have an account?',
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '-Sign up',
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ])),
                ),
                SizedBox(
                  height: 175,
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
    );
  }
}
