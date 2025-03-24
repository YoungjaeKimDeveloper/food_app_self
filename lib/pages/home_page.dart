import 'package:flutter/material.dart';
import 'package:food/components/custom_current_location.dart';
import 'package:food/components/custom_description.dart';
import 'package:food/components/custom_drawer.dart';
import 'package:food/components/custom_food_tile.dart';
import 'package:food/components/custom_sliverappbar.dart';
import 'package:food/components/custom_tab_bar.dart';
import 'package:food/models/food.dart';
import 'package:food/models/restaurant.dart';
import 'package:provider/provider.dart';

// 애니메시연 사용을 위해 StatefulWidget으로 바꿔주어야함
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// TickerProviderStatuMixin 으로 애니메이션 가능한 위젯으로 만들어주긴
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // 하나의 Tab Controller로 관리해 주어야함
  late TabController _tabController;
  // init Controller
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void Function()? onTap() {}

  // sort out and return a list of ood items that belong to a specific category
  List<Food> _filtermenuByCategory(List<Food> fullMenu, FoodCategory category) {
    return fullMenu.where((food) => food.foodCategory == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filtermenuByCategory(fullMenu, category);

      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: categoryMenu.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];
          // return food tile UI
          return CustomFoodTile(food: food, onTap: onTap);
        },
      );
    }).toList();
  }

  // Build Context
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
        // sort out and return a list of food items that belong to a specific category
        // Controller는 계속해서 같이 공유되어야함
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) {
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            );
          },
        ),
      ),
    );
  }
}
