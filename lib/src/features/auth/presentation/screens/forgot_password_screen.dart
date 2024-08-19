import 'package:flutter/material.dart';

import '../components/custom_text_field.dart';

import '../../../../shared/components/vector.dart';
import '../../../../shared/components/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Material(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.only(
          top: edgeInsets.top
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
                      "Forgot Password",
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
                      "Enter your email to reset the password",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF8C8C8C)
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color(0xFF545454),
                    ),
                    hintText: "Email",
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    width: double.infinity,
                    backgroundColor: const Color.fromRGBO(143, 193, 35, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    applyClickAnimation: true,
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Send",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                  )
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