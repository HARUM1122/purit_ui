import 'package:flutter/material.dart';

import '../../../../shared/components/custom_button.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  void pickImage() {
    // TODO: Add image picking logic
  }

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
            SizedBox(height: size.height * 0.08),
            Image.asset(
              'assets/images/purit_logo_2.png'
            ),
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Upload Picture",
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
                "Select a picture for your profile",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF8C8C8C)
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: pickImage,
              child: Container(
                width: 160,
                height: 160,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF6F6F6)
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF044A73)
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 26,
                        color: Color(0xFFFFFFFF)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              width: double.infinity,
              backgroundColor: const Color.fromRGBO(143, 193, 35, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              applyClickAnimation: true,
              onPressed: () {
                Navigator.pushNamed(context, '/home-screen');
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Skip",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline
              ),
            )
          ]
        )
      )
    );
  }
}