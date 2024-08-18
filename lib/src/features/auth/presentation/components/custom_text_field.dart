import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  const CustomTextField({
    required this.hintText,
    required this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFF000000),
      style: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(4),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(54),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(54),
          borderSide: BorderSide.none
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF9E9E9E),
          fontSize: 14,
        ),
        fillColor: const Color(0xFFF6F6F6),
        filled: true
      )
    );
  }
}