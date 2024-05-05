import 'package:flutter/material.dart';
class MyTextfeild extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscureText;
  const MyTextfeild({
    super.key,
    required this.controller,
    required this.hinttext,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 189, 189, 189)),
                    ),
                    fillColor: Color.fromARGB(255, 238, 238, 238),
                    filled: true,
                    hintText: hinttext,
                  ),
                ),
              );
  }
}