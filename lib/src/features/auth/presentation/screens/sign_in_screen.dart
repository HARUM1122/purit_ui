import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../components/custom_text_field.dart';

import '../../../../shared/components/vector.dart';
import '../../../../shared/components/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Material(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.only(
          top: edgeInsets.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.08),
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
                  const CustomTextField(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xFF545454),
                    ),
                    hintText: "Enter Phone Number",
                  ),
                  const SizedBox(height: 16),
                  const CustomTextField(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFF545454),
                    ),
                    hintText: "Enter Password"
                  ),
                  const SizedBox(height: 14),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/forgot-password-screen'),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF262626)
                        ),
                      ),
                    ),
                  ),
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
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000)
                      ),
                      children: [
                        TextSpan(
                          text: 'Signup',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushReplacementNamed(context, '/sign-up-screen'),
                        ),
                      ],
                    ),
                  ),
                ]
              )
            ),
            const Spacer(),
            const Vector()
          ]
        )
      )
    );
  }
}