import 'package:flutter/material.dart';

class HomePlus extends StatefulWidget {
  @override
  _HomePlusState createState() => _HomePlusState();
}

class _HomePlusState extends State<HomePlus> {
  @override
  Widget build(BuildContext context) {
    final screenh = MediaQuery.of(context).size.height;
    final screenw = MediaQuery.of(context).size.width;
    var now = DateTime.now();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            '${now.year}년 ${now.month}월 ${now.day}일',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          backgroundColor: Color.fromARGB(255, 204, 157, 157),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 204, 157, 157),
      body: Column(children: <Widget>[
        Text(
          'check list',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(
              screenw * 0.04, screenh * 0.07, screenw * 0.04, screenh * 0.03),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 125, 74, 74),
                  blurRadius: 5.0,
                  spreadRadius: 0,
                  offset: Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(40)),
        ),
      ]),
    );
  }
}
