import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number1 = 20;
  int number2 = 40;
  var orignalans = "60";
  var piackans;
  var abc = 0;
  var ans = "";

  void randomnumber() {
    setState(() {
      number1 = Random().nextInt(100) + 1;
      number2 = Random().nextInt(100) + 1;
      abc = number1 + number2;
      orignalans = abc.toString();
      ans = "";
    });
  }

  void checking() {
    setState(() {
      if (piackans == orignalans) {
        ans = " YOUR ANSWER IS TRUE";
        print("$piackans");
        print("$orignalans");
      } else {
        ans = " YOUR ANSWER IS FALSE";
        print("$piackans");
        print("$orignalans");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RANDOM QUSTION"),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.black),
                            left: BorderSide(width: 1.0, color: Colors.black),
                            right: BorderSide(width: 1.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
                        height: 50,
                        width: 50,
                        child: Text(
                          "$number1",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.black),
                            left: BorderSide(width: 1.0, color: Colors.black),
                            right: BorderSide(width: 1.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        height: 50,
                        width: 50,
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.black),
                            left: BorderSide(width: 1.0, color: Colors.black),
                            right: BorderSide(width: 1.0, color: Colors.black),
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
                        height: 50,
                        width: 50,
                        child: Text(
                          "$number2",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container( height: 150,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.black),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                    margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
                    child: TextField(style: TextStyle(
                      color: Colors.black,
                    ),
                      onChanged: (value) {
                        piackans = value;
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.black),
                        left: BorderSide(width: 1.0, color: Colors.black),
                        right: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),
                    padding: EdgeInsets.all(5),
                    height: 50,
                    child: TextButton(
                      onPressed: checking,
                      child: Text("ENTER"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    child: Text(
                      "$ans",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  //
                  //
                  //
                  Container(
                    child: TextButton(
                      onPressed: randomnumber,
                      child: Text(
                        "PRESS AND GET NEW QUSTION",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            backgroundColor: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
