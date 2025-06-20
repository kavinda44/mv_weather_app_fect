// import 'package:flutter/material.dart';

// class AboutUs extends StatefulWidget {
//   const AboutUs({super.key});

//   @override
//   State<AboutUs> createState() => _AboutUsState();
// }

// class _AboutUsState extends State<AboutUs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("About Us"),
//         backgroundColor: const Color.fromARGB(255, 76, 167, 175),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/fectmvlogo.png",
//                 height: 100,
//                 // width: 150,
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 height: 40,
//                 child: Text(
//                   "Mission",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                     // backgroundColor: const Color.fromARGB(255, 76, 78, 175),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                   "To sustain a think tank and center of excellence in climate, environment and information technologies with quality research to address societal concerns and ecological protection",
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400,
//                     // backgroundColor: const Color.fromARGB(255, 76, 78, 175),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 height: 40,
//                 child: Text(
//                   "Vision",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                     // backgroundColor: const Color.fromARGB(255, 76, 78, 175),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                   "Our vision is to sustain FECT as a center of excellence in climate, environmental, information technologies and related areas where state of the art research is pursued; technological capability is advanced and disseminated and where all of this is combined to execute socially valued projects",
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400,
//                     // backgroundColor: const Color.fromARGB(255, 76, 78, 175),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 height: 40,
//                 child: Text(
//                   "Values",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                     // backgroundColor: const Color.fromARGB(255, 76, 78, 175),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                   "Support societal welfare and prioritize the vulnerable, maintain credibility of research, maintain institutional technological capabilities, free dissemination of knowledge, maintain a culture of valuing, non-discriminatory treatment,  proactively engage with the most-motivated and most-giving, supporting and engaging with staff for developing competencies, team-work and reaching their potential",
//                   textAlign: TextAlign.justify,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w400,
//                     // backgroundColor: const Color.fromARGB(255, 76, 78, 175),
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


import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(
            fontFamily: 'Poppins', 
            // fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 76, 167, 175),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Column(
            children: [
              // Image.asset(
              //   "assets/fectmvlogo.png",
              //   height: 100,
              // ),
              const SizedBox(height: 20),
              const SizedBox(
                width: double.infinity,
                height: 40,
                child: Text(
                  "Mission",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "To sustain a think tank and center of excellence in climate, environment, and information technologies with quality research to address societal concerns and ecological protection",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: double.infinity,
                height: 40,
                child: Text(
                  "Vision",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Our vision is to sustain FECT as a center of excellence in climate, environmental, information technologies and related areas where state of the art research is pursued; technological capability is advanced and disseminated and where all of this is combined to execute socially valued projects",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: double.infinity,
                height: 40,
                child: Text(
                  "Values",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins', 
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Support societal welfare and prioritize the vulnerable, maintain credibility of research, maintain institutional technological capabilities, free dissemination of knowledge, maintain a culture of valuing, non-discriminatory treatment, proactively engage with the most-motivated and most-giving, supporting and engaging with staff for developing competencies, teamwork and reaching their potential",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
