import 'package:flutter/material.dart';

class Primarybutton {
  static ButtonStyle customElevatedButtonStyle({
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    BorderRadiusGeometry? borderRadius,
  }) {
    return ElevatedButton.styleFrom(
      primary: Colors.black,
       padding: padding,
      shape: const RoundedRectangleBorder(
       borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(20),
       topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10)// Set circular border radius
                                ),
                              ),
    );
  }
}
