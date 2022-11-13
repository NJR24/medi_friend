import 'package:flutter/material.dart';

class ScreenSize {
  static width(BuildContext context, double v) {
    return MediaQuery.of(context).size.width * v;
  }

  static height(BuildContext context, double v) {
    return MediaQuery.of(context).size.height * v;
  }
}

// final textScale = MediaQuery.of(context).textScaleFactor;

