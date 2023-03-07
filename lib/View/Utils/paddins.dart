import 'package:flutter/material.dart';

class EazyPaddins extends StatelessWidget {
  double top;
  double bottom;
  double left;
  double rigth;
  Widget child;

  EazyPaddins(
      {super.key,
      this.top = 10.0,
      this.bottom = 10.0,
      this.left = 10.0,
      this.rigth = 10.0,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: bottom, left: left, right: rigth, top: top),
      child: child,
    );
  }
}
