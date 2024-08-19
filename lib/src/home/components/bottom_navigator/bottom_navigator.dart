import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bottom_nav_button.dart';

import '../../providers/current_page_provider.dart';


class BottomNavigator extends ConsumerWidget {
  final int currentPageIndex;
  const BottomNavigator({required this.currentPageIndex, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: 80 + MediaQuery.paddingOf(context).bottom,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color:Color(0xFF8FC123),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavButton(
            icon: Icons.home,
            title: "Home",
            isSelected: currentPageIndex == 0,
            onPressed: () {
              ref.read(currentPageProvider.notifier).state = 0;
            }
          ),
          const Spacer(),
          BottomNavButton(
            icon: Icons.notifications,
            title: "Notification",
            isSelected: currentPageIndex == 1,
            onPressed: () {
              ref.read(currentPageProvider.notifier).state = 1;
            }
          ),
          const Spacer(),
          BottomNavButton(
            icon: Icons.person,
            title: "Profile",
            isSelected: currentPageIndex == 2,
            onPressed: () {
              ref.read(currentPageProvider.notifier).state = 2;
            }
          )
        ],
      ),
    );
  }
}