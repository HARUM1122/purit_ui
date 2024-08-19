import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final EdgeInsets edgeInsets = MediaQuery.paddingOf(context);
    return Material(
      color: const Color(0xFFFFFFFF),
      child: Padding(
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
                        color: Color(0xFF000000),
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
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 500,
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
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            "(233 litres)",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// // AI - GENERATED CODE
// class ContainerWithHole extends StatelessWidget {
//   final double diameter;
//   final double holeRadius;
//   final int percent;

//   const ContainerWithHole({ 
//     required this.diameter,
//     required this.holeRadius,
//     required this.percent,
//     super.key
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: HoleClipper(diameter: diameter, holeRadius: holeRadius),
//       child: Container(
//         // color: Colors.red,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//             colors: [
//               Colors.red, // Start color (fills from bottom)
//               Colors.red.withOpacity(0.0), // Transparent color (fills the rest)
//             ],
//             stops: [
//               percent / 100, // Controls how much of the container is filled
//               percent / 100, // This ensures the rest is transparent
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

// class HoleClipper extends CustomClipper<Path> {
//   final double diameter;
//   final double holeRadius;

//   HoleClipper({required this.diameter, required this.holeRadius});

//   @override
//   Path getClip(Size size) {
//     Path path = Path()
//       ..addOval(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: diameter / 2));

//     // Create a hole in the middle
//     path.addOval(Rect.fromCircle(
//       center: Offset(size.width / 2, size.height / 2),
//       radius: holeRadius,
//     ));

//     // Fill the hole
//     path.fillType = PathFillType.evenOdd;

//     return path;
//   }

//   @override
//   bool shouldReclip(HoleClipper oldClipper) => true;
// }