import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var number = 1;
  void generateNumber() {
    setState(() {
      number = Random().nextInt(5) + 1;

    });
    print('Ballnumber: $number pressed');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlatButton(
            child: Image.asset('images/ball$number.png'),
            onPressed: generateNumber,
          ),
        ),
      ),
    );
  }
}
