import 'package:clover/constants.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final dynamic onTapIcon;
  final bool secureText;
  const PasswordTextField({required this.controller, required this.onTapIcon, required this.secureText, Key? key}) : super(key: key);

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
            obscureText: secureText,
            decoration: InputDecoration(
              suffix: GestureDetector(
                onTap: onTapIcon,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(secureText ? Icons.visibility_off : Icons.visibility, color: tertiaryTextColor, size: 16,),
                ),
              ),
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
              labelText: 'password',
              labelStyle: const TextStyle(color: primaryTextColor),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
            ),
        ),
      ),
    );
  }
}