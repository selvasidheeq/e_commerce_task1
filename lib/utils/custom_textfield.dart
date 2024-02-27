import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
   final bool obscureText;
  final TextInputType? keyboardType;
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final String? Function(String?) validator;
  const CustomTextfield(
    {
      super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    required this.validator,
    required this.suffixIcon,
    this.obscureText = true,
    }
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
 keyboardType: keyboardType,
    controller: controller,
    validator: validator,
    decoration: InputDecoration(
      labelText: labelText,
      contentPadding:EdgeInsets.only(left:10),
      hintText: hintText,
      labelStyle: TextStyle(color: Colors.black,),
      hintStyle: TextStyle(color: Colors.grey),
      border: InputBorder.none,
      suffixIcon: suffixIcon,
    ),
    );
  }
}