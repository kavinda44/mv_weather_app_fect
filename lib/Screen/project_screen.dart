// import 'package:flutter/material.dart';

// class Projects extends StatefulWidget {
//   const Projects({super.key});

//   @override
//   State<Projects> createState() => _ProjectsState();
// }

// class _ProjectsState extends State<Projects> {
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
//                   "Education and Capacity Building for Resources and Risk Management in Remote Outposts capitalizing on PEER projects on water, drought and hazards: Gaafu Dhaalu Atoll in Southern Maldives",
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
//                   "Based on the suggestion of our PEER program manager (Dr. Dalal Najib), we proposed to support Science, Technology, Engineering, and Mathematics (STEM) learning in the remote island schools in Southern Maldives. The project is being undertaken in the Fares-Maathoda and Thinadhoo islands in the Gaafu Dhaalu Atoll by the equatorial passag We were able to prepare instruments and documentation and trialing procedures were undertaken. After obtaining permission to work with the Gaafu Dhaalu Atoll Education Centre and Huvadhoo School, discussions were held with the principals, teachers to plan project implementation.",
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
//                   "Intra-seasonal climate predictions for Sri Lanka and Maldives for water resources management",
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
//                   "PI: Lareef Zubair, Foundation for Environment, Climate and Technology, Partner: Adam H. Sobel, Columbia University Climate fluctuations at intra-seasonal time scales (beyond a few days to a few months) have profound influences on management of water resources to generate hydroelectricity and irrigate agricultural lands. Any ability to anticipate these fluctuations is valuable. Recent, improvements in understanding of intra-seasonal (IS) climate variability and the availability of real-time satellite based observations have led to the emergence of methodologies for IS climate predictions from a few days up to a month. This project aims to bring to bear climate variability insights from a National Science Foundation-sponsored program called DYNAMO focused on the Western Equatorial Indian Ocean. Specifically, the researchers will test IS climate predictions and assess their use for water management in Sri Lanka.The overall goal of the project is to promote better understanding of IS variability of rainfall around Sri Lanka and Maldives, refine prediction schemes, translate this information to support water management, and upgrade local capcity for climate science and climate services. Even modest improvements in IS predictions can lead significant social and economic consequences from anticipatory water management. Because of the principal investigator’s affiliation with the Mahaweli Authority of Sri Lanka, which is the nation’s coordinating agency for water management, the project has potential for near-term impact as improved prediction models are developed and tested.",
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
//                   "Climate Predictions for Maldives (2011 onwards)",
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
//                   "Every month, IRI produces climate predictions for 3-6 months ahead we are now trying to improve the coverage so that all islands are covered and skill analysis is undertaken.",
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

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Our Projects",
          style: TextStyle(
            fontFamily: 'Poppins', 
          ),
        ),
        backgroundColor: const Color(0xFF4CA7AF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/fectmvlogo.png",
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),

              ProjectCard(
                title: "Education and Capacity Building for Resources",
                shortDescription:
                    "Supporting STEM learning in remote island schools in Southern Maldives...",
                fullDescription:
                    "Supporting STEM learning in remote island schools in Southern Maldives through collaboration with local education centers and implementing water, drought, and hazard management strategies. This project aims to improve the capacity of schools and students by providing resources and tools for better STEM education, especially focused on environmental risk management.",
              ),
              const SizedBox(height: 20),

              ProjectCard(
                title: "Intra-seasonal Climate Predictions for Sri Lanka and Maldives",
                shortDescription:
                    "Climate fluctuations influence water management, hydroelectricity generation...",
                fullDescription:
                    "Climate fluctuations influence water management, hydroelectricity generation, and agriculture. This project tests intra-seasonal predictions to support better water resource management in Sri Lanka and Maldives. By using real-time satellite-based observations and improved prediction methodologies, the project aims to mitigate the impacts of climate variability on agriculture and water resources.",
              ),
              const SizedBox(height: 20),

              ProjectCard(
                title: "Climate Predictions for Maldives (2011 onwards)",
                shortDescription:
                    "IRI produces climate predictions for 3-6 months ahead...",
                fullDescription:
                    "IRI produces climate predictions for 3-6 months ahead. The project aims to improve prediction accuracy to cover all islands and provide better tools for water management. With the availability of enhanced climate prediction tools, the project focuses on analyzing the skills and improving forecasts, benefiting the islands' environmental management systems.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String shortDescription;
  final String fullDescription;

  const ProjectCard({
    required this.title,
    required this.shortDescription,
    required this.fullDescription,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontFamily: 'Poppins', 
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4CA7AF),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              isExpanded ? widget.fullDescription : widget.shortDescription,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: 'Poppins', 
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Read Less' : 'Read More',
                style: const TextStyle(
                  fontFamily: 'Poppins', // Apply Poppins font to "Read More"
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 5, 134, 233),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

