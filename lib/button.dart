import 'package:flutter/material.dart';

class mybutton extends StatelessWidget{
  //declaring variable
  final Color;
  final TextButton;
  final String buttonText;
  final buttontapped;

  mybutton({this.Color, this.TextButton, required this.buttonText, this.buttontapped});


  @override
  Widget build(BuildContext context){
    GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.5)),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            color: Color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              )
            )
          ),
        )
    )
  }
}