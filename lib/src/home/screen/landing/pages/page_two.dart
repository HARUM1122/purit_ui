import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final PageController pageController;
  const PageTwo({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.70, // 80% of the screen size
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/page_two.png'
              )
            )
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x008FC123),
                  Color(0x338FC123),
                  Color(0x668FC123),
                  Color(0x998FC123),
                  Color(0xFF8FC123),
                  Color(0xFF8FC123),
                  Color(0xFF8FC123)
                ]
              )
            ),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.62),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Grow up your business for your stock",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "We can increase your sales traffic in one click and get lots of promos that you can get for new members",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/sign-in-screen');
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(left: 13, right: 4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x7EFFFFFF)
                      ),
                    ),
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(left: 4, right: 3),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFFFFF)
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/sign-in-screen');
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFFFFFFF),
                            size: 14,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        )
      ],
    );
  }
}
