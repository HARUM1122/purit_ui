import 'package:flutter/material.dart';

import '../../../../shared/components/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                "Profile",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF044A73),
              borderRadius: BorderRadius.circular(12)
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg"),
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harum Jawad',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'abc1234@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),
                    )
                  ]
                ),
                Spacer(),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Color(0xFF044A73),
                  size: 30,
                ),
                SizedBox(width: 30),
                Text(
                  "+92-0123456789",
                  style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 14
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF6F6F6),
              borderRadius: BorderRadius.circular(20)
            ),
            child: const  Row(
              children: [
                Icon(
                  Icons.lock,
                  color: Color(0xFF044A73),
                  size: 30,
                ),
                SizedBox(width: 30),
                Text(
                  "Change password",
                  style: TextStyle(
                    color: Color(0xFF606060),
                    fontSize: 14
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}