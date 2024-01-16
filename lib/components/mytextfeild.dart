import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscuretext;
  const MyTextFeild(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.black54,
          filled: true,
          hintText: hinttext,
        ),
      ),
    );
  }
}
