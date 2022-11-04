import 'package:clover/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({required this.hintText, required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: width/6,
        child: TextField(
          controller: controller,
          cursorColor: tertiaryTextColor,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: tertiaryTextColor,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: primaryTextColor,
                width: 2.0,
              ),
            ),
            labelText: hintText,
            labelStyle: const TextStyle(color: primaryTextColor),
            floatingLabelBehavior: FloatingLabelBehavior.auto
          ),
        ),
      ),
    );
  }
}
