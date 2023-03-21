import 'dart:ffi';

import 'package:ease_calculator/responsive/desktop_body.dart';
import 'package:ease_calculator/responsive/mobile_body.dart';
import 'package:ease_calculator/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'dart:js_util';
import 'package:math_expressions/math_expressions.dart';
import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userinput = '';
  var answer = '';


  final List<String> button = [
    'C',
    'del',
    '%',
    '/',
    '7',
    '8',
    '9',
    'X',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '!',
    '0',
    ',',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Responsive(
        mobileBody: MymobileBody(
          userInput: userinput,
          Answer: answer,
        ),
        desktopBody: MydesktopBody(

        ),
      ),
    );
  }
}
