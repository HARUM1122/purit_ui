import 'package:flutter/material.dart';

class TitledDivider extends StatelessWidget {
  final String text;
  const TitledDivider({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF044A73),
            fontSize: 14,
            fontWeight: FontWeight.w700
          ),
        ),
        const Expanded(
          child: Divider(
            color: Color.fromRGBO(221, 221, 221, 1),
            indent: 10,
            height: 0,
          ),
        ),
      ],
    );
  }
}