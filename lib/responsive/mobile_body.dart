import 'package:ease_calculator/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class MymobileBody extends StatefulWidget{  

  @override
  State<MymobileBody> createState() => _MymobileBodyState();
}

class _MymobileBodyState extends State<MymobileBody> {
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
    'e',
    '0',
    ',',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
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
                      userinput,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      answer,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              )
            )
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                itemCount: button.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index){
                  //clear button
                  if (index == 0){
                    return mybutton(
                      buttontapped: (){
                        setState(() {
                          userinput = '';
                          answer = '';
                        });
                      },
                      buttonText: button[index],
                      Color: Colors.blue[50],
                      textColor: Colors.black
                    );
                  }
                  //del button
                  else if (index == 1) {
                    return mybutton(
                      buttonText: button[index],
                      Color: Colors.blue[50],
                      textColor: Colors.black,
                      buttontapped: () {
                        setState(() {
                          userinput = userinput.substring(0, userinput.length - 1);
                        });
                      },
                    );
                  }
                  //% button
                  else if (index == 2) {
                    return mybutton(
                      buttontapped: () {
                        setState(() {
                          userinput += '/100';
                          equalPressed();
                        });
                      },
                      buttonText: button[index],
                      Color: Colors.blue[50],
                      textColor: Colors.black,
                    );
                  }
                  //delete button
                  else if (index == 3) {
                    return mybutton(
                      buttontapped: () {
                        setState(() {
                          userinput = userinput.substring(0, userinput.length - 1);
                        });
                      },
                      buttonText: button[index],
                      Color: Colors.blue,
                      textColor: Colors.white,
                    );
                  }
                  //equal button
                  else if (index == 19) {
                    return mybutton(
                      buttontapped: () {
                        setState(() {
                          equalPressed();
                        });
                      },
                      buttonText: button[index],
                      Color: Colors.yellow[400],
                      textColor: Colors.black,
                    );
                  }
                  else {
                    return mybutton(
                      buttontapped: () {
                        setState(() {
                          userinput += button[index];
                        });
                      },
                      buttonText: button[index],
                      Color: isOperator(button[index])
                      ? Colors.blueAccent
                      : Colors.white,
                      textColor: isOperator(button[index])
                      ? Colors.white
                      : Colors.black,
                    );
                  }
                }
              ),
            ),
          )
        ]
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'X' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }
  void equalPressed() {
	String finaluserinput = userinput;
	finaluserinput = userinput.replaceAll('X', '*');

	Parser p = Parser();
	Expression exp = p.parse(finaluserinput);
	ContextModel cm = ContextModel();
	double eval = exp.evaluate(EvaluationType.REAL, cm);
	answer = eval.toString();

  userinput = '';
  userinput = answer;
}
}