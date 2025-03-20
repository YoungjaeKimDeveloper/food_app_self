import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  // Member Variables
  TextEditingController textEditingController;
  String hintText;
  bool isObscure;
  CustomTextfield({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      obscureText: isObscure,
      controller: textEditingController,
      // Decoration -> InputDecoration
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,

          color: Theme.of(context).secondaryHeaderColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        // Decoration -> Focus Decoration
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
