import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  // Member Variable
  final String text;
  final Widget icon;
  const CustomTile({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
    );
  }
}
