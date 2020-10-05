import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bg Changer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Random Background'),
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.pink,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.cyanAccent,
    Colors.purple,
    Colors.lightBlue,
  ];

  var currentColor = Colors.white;
  var buttonColor = Colors.black;

  setRandomColor() {
    var rand1 = Random().nextInt(colors.length);
    var rand2 = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rand1];
      buttonColor = colors[rand2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: currentColor,
        child: Center(
            child: RaisedButton(
                color: buttonColor,
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Text('Change It!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                onPressed: setRandomColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ))));
  }
}
