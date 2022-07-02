// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'welcome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // ignore: duplicate_ignore
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Welcome(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff7165E3),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    'Bankey',
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w700,
                      fontFamily: "DMSans",
                      color: Colors.white,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    'Your friendly bank',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: "DMSans",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('images/bro.png'),
                SizedBox(
                  height: 10,
                ),
                if (Platform.isIOS)
                  CupertinoActivityIndicator(
                    radius: 10,
                  )
                else
                  CircularProgressIndicator(
                    color: Colors.white,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
