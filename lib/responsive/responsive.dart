import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const Responsive({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints){
        if (Constraints.maxWidth < 600){
          return mobileBody;
        } else {
          return desktopBody;
        }
      }
    );
  }
}