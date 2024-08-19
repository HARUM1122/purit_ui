import 'package:flutter/material.dart';

import '../../../../shared/components/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Padding(
      padding: EdgeInsets.only(
        top: edgeInsets.top
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.jpg"),
                ),
                const SizedBox(width: 10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Harum!",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1E1E1E),
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Welcome back!",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF044A73),
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/purit_logo.png',
                  color: const Color(0xFF8FC123),
                  height: 60,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 540,
                    decoration: BoxDecoration(
                      color: const Color(0xFF044A73),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 80),
                        Container(
                          width: 120,
                          height: 220,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/filter_preview.png'
                              )
                            )
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(top: 40),
                            alignment: Alignment.topCenter,
                            child: const Text(
                              "50%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "21 more days left!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const Text(
                          "(233 litres)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          backgroundColor: const Color(0xFF8FC123),
                          applyClickAnimation: true, 
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                            child: Text(
                              "I changes the Filter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          backgroundColor: Colors.transparent,
                          applyClickAnimation: false,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 0.4
                            )
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            child: Text(
                              "Buy Spare Parts",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          )
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: const Color(0xFFC8C8C8),
                        width: 0.6
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        const Text(
                          "Your Information",
                          style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(12),
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: const Color(0xFF8FC123),
                                ),
                                borderRadius: BorderRadius.circular(24)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 28),
                                  Image.asset(
                                    'assets/images/water_drop_vector.png'
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "Edit or view your water info",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.all(12),
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.circular(24)
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 28),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Filters Changed",
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(height: 30)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 260,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 40),
                        Image.asset(
                          'assets/images/whatsapp_logo.png'
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            "Whatsapp support available Monday to Friday via messaging",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        CustomButton(
                          width: 220,
                          height: 50,
                          backgroundColor: Colors.transparent,
                          applyClickAnimation: false,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(
                              color: Color(0xFF8FC123),
                              width: 1
                            )
                          ),
                          child: const Center(
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                color: Color(0xFF8FC123),
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: const Color(0xFFC8C8C8),
                        width: 0.6
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/shower_filter.png'
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              const Text(
                                "Try the new shower filter!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Enjoy all the benefits of pure water even in the shower, for the well-being of your skin and hair,",
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 12,
                                )
                              ),
                              const Spacer(),
                              CustomButton(
                                backgroundColor: const Color(0xFF8FC123),
                                applyClickAnimation: true, 
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                  child: Text(
                                    "DISCOVER MORE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                )
                              ),
                              const SizedBox(height: 30)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: const Color(0xFFC8C8C8),
                        width: 0.6
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/plastic_water_bottle.png'
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30),
                              Text(
                                "Plastic bottles avoided",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              Text(
                                "1700",
                                style: TextStyle(
                                  color: Color(0xFF8FC123),
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              Spacer(),
                              Text(
                                "Thank you, Your contribution is important for the environment",
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                )
                              ),
                              Spacer(),
                              SizedBox(height: 30)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 30)
                ]
              )
            )
          ),
        ],
      )
    );
  }
}