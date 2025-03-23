import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          // 1st tab
          Tab(icon: Icon(Icons.home)),
          // 2nd tab
          Tab(icon: Icon(Icons.settings)),
          Tab(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
