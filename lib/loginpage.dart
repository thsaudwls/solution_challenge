import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first0302/homepage.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _idController = TextEditingController();
  final _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenh = MediaQuery.of(context).size.height;
    final screenw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: screenh * 0.2),
            Center(
              child: Text(
                'ecomate',
                style: TextStyle(
                    color: Color.fromARGB(255, 204, 157, 157),
                    fontSize: 46,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 247, 231, 231),
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _pwController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 247, 231, 231),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                TextButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      color: Color.fromARGB(255, 204, 157, 157),
                    ),
                  ),
                  onPressed: () {
                    _idController.clear();
                    _pwController.clear();
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 204, 157, 157),
                  ),
                  child: Text('login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (HomePage())));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
