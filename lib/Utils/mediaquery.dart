import 'package:flutter/material.dart';

class ScreenSize {
  static double screenHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage / 100;
  }
}
