import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final String title;
  final Icon prefixIcon;
  const SignInScreen({
    required this.title,
    required this.prefixIcon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Material(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.only(
          top: edgeInsets.top,
          left: 20,
          right: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.14),
            Image.asset(
              'assets/images/purit_logo_2.png'
            ),
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 14),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enter your credentials to log in",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF8C8C8C)
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              cursorColor: const Color(0xFF000000),
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 14,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(4),
                prefixIcon: const Icon(
                  Icons.phone,
                  color: Color(0xFF545454),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(54),
                  borderSide: BorderSide.none
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(54),
                  borderSide: BorderSide.none
                ),
                hintText: 'Enter your phone number',
                hintStyle: const TextStyle(
                  color: Color(0xFF9E9E9E),
                  fontSize: 14,
                ),
                fillColor: const Color(0xFFF6F6F6),
                filled: true
              )
            ),
          ]
        )
      )
    );
  }
}