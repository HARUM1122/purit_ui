import 'package:flutter/material.dart';

import 'titled_divider.dart';
import 'notification_tile.dart';

class NotificationList extends StatelessWidget {
  final List<NotificationTile> readNotifications;
  final List<NotificationTile> unReadNotifications;
  const NotificationList({
    required this.readNotifications,
    required this.unReadNotifications,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final allNotifications = [];
    if (unReadNotifications.isNotEmpty) {
      allNotifications.addAll(
        [
          const TitledDivider(
            text: 'Unread Notification'
          ),
          ...unReadNotifications
        ]
      );
    }
    if (readNotifications.isNotEmpty) {
      allNotifications.addAll(
        [
          const TitledDivider(
            text: 'Read Notification'
          ),
          ...readNotifications
        ]
      );
    }
    if (allNotifications.isEmpty) {
      return const Center(
        child: Text(
          "No Notifications",
          style: TextStyle(
            color: Color(0xFF1E1E1E),
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        ),
      );
    }
    return ListView.builder(
      itemCount: allNotifications.length,
      itemBuilder: (_, index) => allNotifications[index]
    );
  }
}