import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/current_page_provider.dart';
import '../components/bottom_navigator/bottom_navigator.dart';

import '../../features/home/presentation/screens/home_page.dart';
import '../../features/profile/presentation/screens/profile_page.dart';
import '../../features/notification/presentation/screens/notification_page.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentPageIndex = ref.watch(currentPageProvider);
    return Scaffold(
      body: switch (currentPageIndex) {
        0 => const HomePage(),
        1 => const NotificationPage(),
        2 => const ProfilePage(),
        _=> const Center(
          child: Text("PAGE NOT FOUND"),
        )
      },
      bottomNavigationBar: BottomNavigator(
        currentPageIndex: currentPageIndex
      )
    );
  }
}