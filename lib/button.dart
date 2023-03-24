import 'package:flutter/material.dart';

class mybutton extends StatelessWidget{
  //declaring variable
  final Color;
  final textColor;
  final String buttonText;
  final buttontapped;

  mybutton({this.Color, this.textColor, required this.buttonText, this.buttontapped});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}