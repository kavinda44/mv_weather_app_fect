// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';


// class ContactUs extends StatefulWidget {
//   const ContactUs({super.key});

//   @override
//   State<ContactUs> createState() => _ContactUsState();
// }

// class _ContactUsState extends State<ContactUs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Contact Us"),
//         backgroundColor: const Color.fromARGB(255, 76, 167, 175),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Container(
//           decoration: const BoxDecoration(),
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
               
//                 Container(
//                   decoration: const BoxDecoration(),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "Call Us",
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         SizedBox(
                          
//                           child: Row(
//                             children: [
                              
//                               const Expanded(
//                                 flex: 1,
//                                 child: Icon(Icons.call, size: 40),
//                               ),
//                               const SizedBox(width: 15),
//                               Expanded(
//                                 flex: 3,
//                                 child: Column(
//                                   children: [
//                                     SizedBox(
//                                       height: 50,
//                                       child: Row(
//                                         children: [
//                                           MaterialButton(onPressed: (){
//                                             launchUrl(Uri.parse("tel:(960)7569744"));
//                                           },
//                                           child: Text("(960)7569744",
//                                           style: TextStyle(fontSize: 20),),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                      SizedBox(
//                                       height: 50,
//                                       child: Row(
//                                         children: [
//                                           MaterialButton(onPressed: (){
//                                             launchUrl(Uri.parse("tel:(960)7563292"));
//                                           },
//                                           child: Text("(960)7563292",
//                                           style: TextStyle(fontSize: 20),),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
                
//                 Container(
//                   decoration: const BoxDecoration(),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "Email Us",
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Row(
//                           children: [
//                             const Expanded(
//                               flex: 1,
//                               child: Icon(Icons.email, size: 40),
//                             ),
//                             const SizedBox(width: 15),
//                             Expanded(
//                               flex: 3,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     height: 50,
//                                     child: Row(
//                                       children: [
//                                         MaterialButton(
//                                           onPressed: () {
//                                             launchUrl(
//                                               Uri.parse("mailto:fectmv@gmail.com"),
//                                             );
//                                           },
//                                           child: const Text("fectmv@gmail.com",
//                                           style: TextStyle(fontSize: 20),),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 50,
//                                     child: Row(
//                                       children: [
//                                         MaterialButton(
//                                           onPressed: () {
//                                             launchUrl(
//                                               Uri.parse("mailto:fectmv@tropicalclimate.org"),
//                                             );
//                                           },
//                                           child: const Text("fectmv@tropicalclimate.org",
//                                           style: TextStyle(fontSize: 20),),
//                                         ),
                                        
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 // Additional Icons Section
//                 const Text(
//                   "Follow Us",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     MaterialButton(
//                       onPressed: () { 
//                         launchUrl(Uri.parse("https://web.facebook.com/fectmv/?_rdc=1&_rdr"));
//                        },
//                       child: Image.asset(
//                         "assets/facebook.png",
                       
//                       ),
//                     ),
//                     MaterialButton(
//                       onPressed: () { 
//                         launchUrl(Uri.parse("https://www.linkedin.com/in/fect-mv-119121281/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"));
//                        },
//                       child: Image.asset(
//                         "assets/linkedin.png",
                       
//                       ),
//                     ),
//                     MaterialButton(
//                       onPressed: () { 
//                         launchUrl(Uri.parse("https://x.com/fectmv?s=21"));
//                        },
//                       child: Image.asset(
//                         "assets/x.png",
                       
//                       ),
//                     ),
                
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Us",
          style: TextStyle(
            fontFamily: 'Poppins', // Use Poppins font
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 76, 167, 175),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Call Us Section
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Call Us",
                      style: TextStyle(
                        fontFamily: 'Poppins', // Use Poppins font
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      leading: const Icon(Icons.call, size: 30),
                      title: const Text(
                        "(960) 7569744",
                        style: TextStyle(
                          fontFamily: 'Poppins', // Use Poppins font
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        launchUrl(Uri.parse("tel:(960)7569744"));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.call, size: 30),
                      title: const Text(
                        "(960) 7563292",
                        style: TextStyle(
                          fontFamily: 'Poppins', // Use Poppins font
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        launchUrl(Uri.parse("tel:(960)7563292"));
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Email Us Section
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email Us",
                      style: TextStyle(
                        fontFamily: 'Poppins', // Use Poppins font
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      leading: const Icon(Icons.email, size: 30),
                      title: const Text(
                        "fectmv@gmail.com",
                        style: TextStyle(
                          fontFamily: 'Poppins', // Use Poppins font
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        launchUrl(Uri.parse("mailto:fectmv@gmail.com"));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.email, size: 30),
                      title: const Text(
                        "fectmv@tropicalclimate.org",
                        style: TextStyle(
                          fontFamily: 'Poppins', // Use Poppins font
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        launchUrl(Uri.parse("mailto:fectmv@tropicalclimate.org"));
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Follow Us Section
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Follow Us",
                      style: TextStyle(
                        fontFamily: 'Poppins', // Use Poppins font
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("https://web.facebook.com/fectmv/?_rdc=1&_rdr"));
                          },
                          icon: Image.asset(
                            "assets/facebook.png",
                            height: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("https://www.linkedin.com/in/fect-mv-119121281/?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app"));
                          },
                          icon: Image.asset(
                            "assets/linkedin.png",
                            height: 40,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("https://x.com/fectmv?s=21"));
                          },
                          icon: Image.asset(
                            "assets/x.png",
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
