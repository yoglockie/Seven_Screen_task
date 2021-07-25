// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:seven_screens/LoginPage.dart';

import 'package:seven_screens/RegisterPage.dart';
// import 'package:hexcolor/hexcolor.dart';

import 'package:seven_screens/bottomwave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          hintColor: Color(0xFFC0F0E8),
          primaryColor: Color(0xFF80E1D1),
          canvasColor: Colors.transparent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.only(top: 120),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        child: Container(
                      child: Align(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          width: 150,
                          height: 150,
                        ),
                        alignment: Alignment.center,
                      ),
                      height: 154,
                    )),
                    Positioned(
                      child: Container(
                          height: 154,
                          width: MediaQuery.of(context).size.width,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "GO",
                              style: TextStyle(
                                fontSize: 120,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )),
                    ),
                    Positioned(
                      width: 60,
                      height: 60,
                      top: 140,
                      left: 260,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      width: 30,
                      height: 30,
                      top: 200,
                      left: 230,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(350, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            SizedBox(
              height: 5,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    minimumSize: Size(350, 45),
                    side: BorderSide(width: 1, color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
            Expanded(
              child: Align(
                child: ClipPath(
                  child: Container(
                    color: Colors.white,
                    height: 300,
                  ),
                  clipper: BottomWave(),
                ),
                alignment: Alignment.bottomCenter,
              ),
            )
          ],
        ));
  }
}
