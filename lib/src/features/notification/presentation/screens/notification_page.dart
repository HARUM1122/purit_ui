import 'package:flutter/material.dart';

import '../components/notification_list.dart';
import '../components/notification_tile.dart';

import '../../../../shared/components/custom_button.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Padding(
      padding: EdgeInsets.only(
        top: edgeInsets.top,
        left: 20,
        right: 20
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              CustomButton(
                width: 40,
                height: 40,
                applyClickAnimation: true,
                backgroundColor: const Color.fromRGBO(236, 236, 236, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                onPressed: () {},
                child: const Center(
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Color(0xFF1E1E1E),
                    size: 30,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                "Notifications",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          const Expanded(
            child: NotificationList(
              readNotifications: [
                NotificationTile(
                  heading: "Notification Heading",
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  since: "2 Hours ago", 
                  unRead: true
                ),
                NotificationTile(
                  heading: "Notification Heading",
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  since: "2 Hours ago", 
                  unRead: true
                ),
                NotificationTile(
                  heading: "Notification Heading",
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  since: "2 Hours ago", 
                  unRead: true
                )
              ],
              unReadNotifications: [
                NotificationTile(
                  heading: "Notification Heading",
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  since: "2 Hours ago", 
                  unRead: false
                ),
                NotificationTile(
                  heading: "Notification Heading",
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  since: "2 Hours ago", 
                  unRead: false
                ),
                NotificationTile(
                  heading: "Notification Heading",
                  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                  since: "2 Hours ago", 
                  unRead: false
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}