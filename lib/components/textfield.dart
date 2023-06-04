import 'package:flutter/material.dart';
class Mytextfield extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obsecureText;
  const Mytextfield({super.key, required this.controller, required this.hinttext, required this.obsecureText
  
  });

  @override
  Widget build(BuildContext context) {
    return  Padding
          (
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: controller,
              obscureText: obsecureText,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: hinttext,
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
            ),
          );
  }
}