import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Delivery Fee
              Column(
                children: [
                  Text(
                    "Delivery Fee",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$0.99",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Delivery time",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "15 - 30 min",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ],
              ),
              // Delivery Time
            ],
          ),
        ),
      ),
    );
  }
}
