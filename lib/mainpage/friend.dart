import 'package:flutter/material.dart';

class Friend extends StatefulWidget {
  @override
  _FriendState createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          title: Text(
            'compitition',
            style: TextStyle(color: Color.fromARGB(255, 204, 157, 157)),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
