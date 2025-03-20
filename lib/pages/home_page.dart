import 'package:flutter/material.dart';
import 'package:food/components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Container(padding: EdgeInsets.all(40), child: Text("HomePage")),
      ),
      drawer: CustomDrawer(),
    );
  }
}
