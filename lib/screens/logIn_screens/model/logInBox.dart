import 'package:flutter/material.dart';

class LogInBox extends StatelessWidget {
  LogInBox(
      {required this.hintText,
      required this.labelText,
      required this.controller,
      required this.isObscure});
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final bool isObscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 4),
      child: TextField(
        controller: controller,
        obscureText: isObscure,
        decoration: InputDecoration(
          disabledBorder: InputBorder.none,
          fillColor: Colors.blue[50],
          filled: true,
          contentPadding: EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: '$labelText',
          hintText: '$hintText',
        ),
      ),
    );
  }
}
