import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first0302/homepage.dart';
import 'package:first0302/loginpage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.offAll(LoginPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 204, 157, 157),
        child: Center(
            child: Text(
          "ecomate",
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
