import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // Member Variable
  String text;
  void Function()? onPresse;
  // Constructor
  CustomButton({super.key, required this.text, required this.onPresse});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresse,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
