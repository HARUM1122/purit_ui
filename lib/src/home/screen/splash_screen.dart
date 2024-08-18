import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/landing-screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Material(
      color: const Color(0xFF8FC123),
      child: Padding(
        padding: EdgeInsets.only(
          top: edgeInsets.top,
          bottom: edgeInsets.bottom + 20
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/purit_logo.png',
              height: 233,
            ),
            const Spacer(),
            const Text(
              "Purit App",
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}

