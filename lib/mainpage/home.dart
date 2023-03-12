import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './home_plus.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  var now = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Text(
            '${now.year}.${now.month}.${now.day}',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              child: Text("Hello"),
            ),
          ),
          Container(
            height: 330,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 204, 157, 157),
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(55.0))),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (HomePlus())));
                  },
                  child: Text(
                    'seassack 님의 check list',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
