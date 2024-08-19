import 'package:flutter/material.dart';

class Vector extends StatelessWidget {
  const Vector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/images/vector_two.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/vector_one.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}