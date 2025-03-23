import 'package:flutter/material.dart';
import 'package:food/components/custom_current_location.dart';
import 'package:food/components/custom_description.dart';
import 'package:food/components/custom_drawer.dart';
import 'package:food/components/custom_sliverappbar.dart';
import 'package:food/components/custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  // init Controller
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // tab controller
    return Scaffold(
      drawer: CustomDrawer(),
      // Body가 움직이면 Sliver도 스크롤이 가능하기떄문에 같이 내려감
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // 유동적인 Appbar를 만들어줌
            CustomSliverappbar(
              title: CustomTabBar(tabController: _tabController),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    indent: 20,
                    endIndent: 20,
                  ),
                  CustomCurrentLocation(),
                  CustomDescription(),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Text("First");
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Text("Second");
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Text("Third");
              },
            ),
          ],
        ),
      ),
    );
  }
}
