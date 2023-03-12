import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../loginpage.dart';

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    final screenw = MediaQuery.of(context).size.width;
    final screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          title: Text(
            'my page',
            style: TextStyle(color: Color.fromARGB(255, 204, 157, 157)),
          ),
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Color.fromARGB(255, 204, 157, 157),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              );
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.only(left: 30, top: 120),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 204, 157, 157),
              ),
              child: Text(
                '설정',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.alarm,
                color: Colors.black,
              ),
              title: Text('알림 설정'),
              onTap: () => {print("11111")},
              // trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              title: Text('비공개 계정 설정'),
              onTap: () => {print("11111")},
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.black,
              ),
              title: Text('로그아웃'),
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('로그아웃 하시겠습니까?'),
                      actions: <Widget>[
                        TextButton(
                            child: Text(
                              'CANCEL',
                              style: TextStyle(
                                color: Color.fromARGB(255, 204, 157, 157),
                              ),
                            ),
                            onPressed: () => Navigator.of(context).pop()),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 204, 157, 157),
                          ),
                          child: Text('확인'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => (LoginPage())));
                          },
                        ),
                      ],
                    );
                  },
                ),
              },
            ),
            ListTile(
              leading: Icon(
                Icons.remove_circle,
                color: Colors.black,
              ),
              title: Text('회원 탈퇴'),
              onTap: () => {print("11111")},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: screenh * 0.27,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 224, 224),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 192, 192, 192),
                      blurRadius: 5.0,
                      spreadRadius: 0,
                      offset: Offset(0, 5),
                    ),
                  ]),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 137, vertical: 50),
                child: Text(
                  'Kim ssasack',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Text('Kim ssasck님의 누적탄소 배출량'),
            ),
            Container(
                height: screenh * 0.2,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 229, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 192, 192, 192),
                        blurRadius: 5.0,
                        spreadRadius: 0,
                        offset: Offset(0, 5),
                      ),
                    ])),
            Container(
              child: Text('나의 랭킹 보기'),
            ),
            Container(
              child: Row(children: [
                Container(
                  height: screenh * 0.15,
                  width: screenw * 0.45,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 229, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          blurRadius: 5.0,
                          spreadRadius: 0,
                          offset: Offset(0, 5),
                        ),
                      ]),
                ),
                Container(
                  height: screenh * 0.15,
                  width: screenw * 0.45,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 229, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          blurRadius: 5.0,
                          spreadRadius: 0,
                          offset: Offset(0, 5),
                        ),
                      ]),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
