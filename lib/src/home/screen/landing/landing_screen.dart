import 'package:flutter/material.dart';

import 'pages/pages.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late final PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageView(
        controller: _pageController,
        children: [
          PageOne(
            pageController: _pageController,
          ),
          PageTwo(
            pageController: _pageController,
          )
        ],
      ),
    );
  }
}