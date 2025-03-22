import 'package:flutter/material.dart';
import 'package:food/components/custom_current_location.dart';
import 'package:food/components/custom_description.dart';
import 'package:food/components/custom_drawer.dart';
import 'package:food/components/custom_sliverappbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      // Body가 움직이면 Sliver도 스크롤이 가능하기떄문에 같이 내려감
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // 유동적인 Appbar를 만들어줌
            CustomSliverappbar(
              title: Text("Title"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
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
        body: Container(color: Colors.blue),
      ),
    );
  }
}
