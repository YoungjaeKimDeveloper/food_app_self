import 'package:flutter/material.dart';

// Menu Custom Tile
class CustomTile extends StatelessWidget {
  // Member Variable
  final String text;
  final Widget icon;

  final void Function()? onTap;
  const CustomTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
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
      ),
    );
  }
}
