import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../components/custom_text_field.dart';

import '../../../../shared/components/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            SizedBox(height: size.height * 0.06),
            Image.asset(
              'assets/images/purit_logo_2.png'
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Signup",
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
                "Enter your credentials to signup",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF8C8C8C)
                ),
              ),
            ),
            const SizedBox(height: 30),
            ...() {
              List<Widget> textFields = [];
              const List<(String, IconData)> textFieldConfigurations = [
                ("Enter name", Icons.person),
                ("Enter Email", Icons.mail),
                ("Enter Phone Number", Icons.phone),
                ("Enter Password", Icons.lock),
                ("Confirm Password", Icons.lock)
              ];
              for (int i = 0; i < textFieldConfigurations.length; i++) {
                final config = textFieldConfigurations[i];
                textFields.add(
                  CustomTextField(
                    hintText: config.$1,
                    prefixIcon: Icon(
                      config.$2,
                      color: const Color(0xFF545454),
                    ),
                  )
                );
                if (i < textFieldConfigurations.length - 1) {
                  textFields.add(
                   const  SizedBox(height: 16)
                  );
                }
              }
              return textFields;
            }(),
            const SizedBox(height: 20),
            CustomButton(
              width: double.infinity,
              backgroundColor: const Color.fromRGBO(143, 193, 35, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              applyClickAnimation: true,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/user-info-screen');
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Signup",
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
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000)
                ),
                children: [
                  TextSpan(
                    text: 'Signin',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pushReplacementNamed(context, '/sign-in-screen'),
                  ),
                ],
              ),
            ),
          ]
        )
      )
    );
  }
}