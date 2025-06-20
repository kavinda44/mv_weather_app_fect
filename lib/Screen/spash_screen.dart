import 'package:first_project/Screen/signup_screen.dart';
import 'package:first_project/Screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_project/Utils/colors.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: backgroundColor1,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.53,
                width: size.width,
                decoration: BoxDecoration(
                  color: backgroundColor1,
                  image: const DecorationImage(
                    image: AssetImage("assets/image.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.51,
              left: 20,
              right: 20,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(size.height * 0.3 * 0.3),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Explore Maldives\nclimate and weather\nconditions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: primaryColor,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Planning your trip has never been easier with the Ideate weather app, you can instantly see the whole Maldives within few seconds.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: primaryColor,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColor1,
                          padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: primaryColor,
                                height: 2.2,
                              ),
                            ),
                            WidgetSpan(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignInScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: backgroundColor1,
                                    height: 1.1,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:first_project/Screen/signup_screen.dart';
// import 'package:first_project/Screen/signin_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:first_project/Utils/colors.dart';

// class MySplashScreen extends StatelessWidget {
//   const MySplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SingleChildScrollView( // Add SingleChildScrollView to ensure content scrolls on smaller devices
//         child: Container(
//           color: backgroundColor1,
//           height: size.height,  // Ensures the container takes the full height of the screen
//           width: size.width,
//           child: Stack(
//             children: [
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Container(
//                   height: size.height * 0.53,
//                   width: size.width,
//                   decoration: BoxDecoration(
//                     color: backgroundColor1,
//                     image: const DecorationImage(
//                       image: AssetImage("assets/image.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: size.height * 0.51,
//                 left: 20,
//                 right: 20,
//                 child: Center(
//                   child: Container(
//                     padding: const EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: backgroundColor2,
//                       borderRadius: BorderRadius.circular(size.height * 0.09),
//                     ),
//                     child: Column(
//                       children: [
//                         Text(
//                           "Explore Maldives\nclimate and weather\nconditions",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.bold,
//                             fontSize: size.width * 0.07, // Adjusted based on screen width
//                             color: primaryColor,
//                             height: 1.4,
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Text(
//                           "Planning your trip has never been easier with the Ideate weather app, you can instantly see the whole Maldives within few seconds.",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500,
//                             fontSize: size.width * 0.045, // Adjusted font size
//                             color: primaryColor,
//                             height: 1.4,
//                           ),
//                         ),
//                         const SizedBox(height: 30),
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const SignUpScreen(),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: backgroundColor1,
//                             padding: EdgeInsets.symmetric(
//                               horizontal: size.width * 0.15, // Responsive padding
//                               vertical: 10,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           child: const Text(
//                             "Get Started",
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               fontSize: 18,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         RichText(
//                           textAlign: TextAlign.center,
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: "Already have an account? ",
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: size.width * 0.045, // Adjusted font size
//                                   color: primaryColor,
//                                   height: 2.2,
//                                 ),
//                               ),
//                               WidgetSpan(
//                                 child: GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => const SignInScreen(),
//                                       ),
//                                     );
//                                   },
//                                   child: Text(
//                                     "Log in",
//                                     style: TextStyle(
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: size.width * 0.045, // Adjusted font size
//                                       color: backgroundColor1,
//                                       height: 1.1,
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
