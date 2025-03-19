import 'package:flutter/material.dart';
import 'package:food/components/custom_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Icon(Icons.house, size: 100),
          Text("H O U S I N G", style: TextStyle(fontWeight: FontWeight.bold)),
          Divider(
            color: Theme.of(context).colorScheme.inversePrimary,
            height: 20,
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          // SizedBox(height: 40),
          Expanded(
            child: Column(
              children: [
                CustomTile(text: "H O M E", icon: Icon(Icons.home)),
                CustomTile(text: "S E T T I N G S", icon: Icon(Icons.settings)),
              ],
            ),
          ),
          Spacer(),
          CustomTile(text: "Logout", icon: Icon(Icons.logout)),
        ],
      ),
    );
  }
}
