import 'package:flutter/material.dart';

class CustomSliverappbar extends StatelessWidget {
  // Member Variables
  final Widget title;
  final Widget child;
  // Constructor
  const CustomSliverappbar({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 120, // 최소높이
      expandedHeight: 320, //최대높이
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 0,
      centerTitle: true,
      floating: true, //끝까지 밀어야 지워짐
      title: title,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.card_travel),
        ),
      ],
      // 스크롤하면 자연스럽게 사라지는부분
      flexibleSpace: FlexibleSpaceBar(
        // 상단에 표시되는 제목을 의미함
        centerTitle: true,
        titlePadding: const EdgeInsets.all(8),
        expandedTitleScale: 1,
        // 스크롤시에 가려지는부분
        background: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [child],
        ),
        title: title,
      ),
    );
  }
}
