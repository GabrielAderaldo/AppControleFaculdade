import 'package:flutter/material.dart';

class QuerySize {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
