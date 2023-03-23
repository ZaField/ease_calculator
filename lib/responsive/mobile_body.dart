import 'package:flutter/material.dart';


class MymobileBody extends StatefulWidget{
  final String userInput;
  const MymobileBody({super.key, required this.userInput});

  @override
  State<MymobileBody> createState() => _MymobileBodyState();
}

class _MymobileBodyState extends State<MymobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      answer
                    ),
                  ),
                ],
              )
            )
          )
        ]
      ),
    );
  }
}