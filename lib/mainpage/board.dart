import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          title: Text(
            'board',
            style: TextStyle(color: Color.fromARGB(255, 204, 157, 157)),
          ),
          backgroundColor: Colors.white,
        ),
        
      ),
    );
  }
}
