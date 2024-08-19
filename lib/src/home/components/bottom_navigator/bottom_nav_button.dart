import 'package:flutter/material.dart';

class BottomNavButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final Function() onPressed;
  const BottomNavButton({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF044A73) : Colors.transparent,
          borderRadius: BorderRadius.circular(40)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: const Color(0xFFFFFFFF),
              size: 24,
            ),
            const SizedBox(width: 10),
            Visibility(
              visible: isSelected,
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}