import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String heading;
  final String description;
  final String since;
  final bool unRead;
  const NotificationTile({
    required this.heading,
    required this.description,
    required this.since,
    required this.unRead,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 6,
            height: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: !unRead ? const Color(0xFF8FC123) : const Color(0xFFBBBBBB),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        heading,
                        style: const TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const Spacer(),
                      Text(
                        since,
                        style: const TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xAA0F0F0F),
                      fontSize: 14
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}