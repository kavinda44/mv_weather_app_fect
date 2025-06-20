// import 'package:flutter/material.dart';
// import 'package:first_project/Utils/colors.dart';

// class MoreDetailsPage extends StatelessWidget {
//   final Map<String, dynamic> weather;

//   MoreDetailsPage({required this.weather});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           '${weather['city']} - Details',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: backgroundColor1,
//       ),
//       body: Container(
//         color: backgroundColor1,
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   Image.network('https:${weather['weatherIcon']}'),
//                   SizedBox(height: 10),
//                   Text(
//                     '${weather['temperature']?.toStringAsFixed(1) ?? 'N/A'}°C',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: primaryColor,
//                       fontFamily: 'Poppins',
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     weather['description'] ?? 'N/A',
//                     style: TextStyle(fontSize: 20, color: Colors.grey[700], fontFamily: 'Poppins'),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Humidity: ${weather['humidity']}%',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Wind Speed: ${weather['windSpeed']} kph',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),

//             Text(
//               'precipitation: ${weather['precip_mm']} mm',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'uvIndex: ${weather['uv']}',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'pressure: ${weather['pressure_mb']} mb',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:first_project/Utils/colors.dart';

// class MoreDetailsPage extends StatelessWidget {
//   final Map<String, dynamic> weather;

//   MoreDetailsPage({required this.weather});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           '${weather['city']} - Details',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         backgroundColor: backgroundColor1,
//       ),
//       body: Container(
//         color: backgroundColor1,
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   Image.network('https:${weather['weatherIcon']}'),
//                   SizedBox(height: 10),
//                   Text(
//                     '${weather['temperature']?.toStringAsFixed(1) ?? 'N/A'}°C',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: primaryColor,
//                       fontFamily: 'Poppins',
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     weather['description'] ?? 'N/A',
//                     style: TextStyle(fontSize: 20, color: Colors.grey[700], fontFamily: 'Poppins'),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Humidity: ${weather['humidity']}%',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Wind Speed: ${weather['windSpeed']} kph',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             // Display added fields here
//             Text(
//               'Precipitation: ${weather['precipitation']} mm',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Pressure: ${weather['pressure']} hPa',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'UV Index: ${weather['uvIndex']}',
//               style: TextStyle(fontSize: 18, color: primaryColor, fontFamily: 'Poppins'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart'; 
import 'package:first_project/Utils/colors.dart';

class MoreDetailsPage extends StatelessWidget {
  final Map<String, dynamic> weather;

  const MoreDetailsPage({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${weather['city']} - Details',
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: backgroundColor1,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor2,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    // Weather Icon
                    ClipOval(
                      child: Image.network(
                        'https:${weather['weatherIcon']}',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Temperature
                    Text(
                      '${weather['temperature']?.toStringAsFixed(1) ?? 'N/A'}°C',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Weather Description
                    Text(
                      weather['description'] ?? 'N/A',
                      style: TextStyle(fontSize: 20, color: Colors.grey[700], fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Detailed Information Card
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: backgroundColor1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoRow(
                        title: 'Humidity',
                        value: '${weather['humidity']}%',
                      ),
                      const Divider(),
                      InfoRow(
                        title: 'Wind Speed',
                        value: '${weather['windSpeed']} kph',
                      ),
                      const Divider(),
                      InfoRow(
                        title: 'Precipitation',
                        value: '${weather['precipitation']} mm',
                      ),
                      const Divider(),
                      InfoRow(
                        title: 'Pressure',
                        value: '${weather['pressure']} hPa',
                      ),
                      const Divider(),
                      InfoRow(
                        title: 'UV Index',
                        value: '${weather['uvIndex']}',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Circular Sliders (now using percent_indicator)
              Text(
                'Detailed Visualization',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 20),
             
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    CircularIndicatorSection(
                      title: 'Humidity',
                      percentage: weather['humidity'] / 100,
                      color: const Color(0xFF001F3F),
                    ),
                    const SizedBox(width: 20),
                    // Wind Speed Circular Indicator
                    CircularIndicatorSection(
                      title: 'Wind Speed',
                      percentage: weather['windSpeed'] / 150, 
                      color: const Color(0xFF001F3F),
                    ),
                    const SizedBox(width: 20),
                    
                    CircularIndicatorSection(
                      title: 'UV Index',
                      percentage: weather['uvIndex'] / 11, 
                      color: const Color(0xFF001F3F),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: primaryColor,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryColor,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}


class CircularIndicatorSection extends StatelessWidget {
  final String title;
  final double percentage;
  final Color color;

  const CircularIndicatorSection({
    super.key,
    required this.title,
    required this.percentage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryColor,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 10),
        CircularPercentIndicator(
          radius: 75.0,
          lineWidth: 10.0,
          percent: percentage,
          center: Text(
            '${(percentage * 100).toStringAsFixed(0)}%',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
              fontFamily: 'Poppins',
            ),
          ),
          progressColor: color,
          backgroundColor: const Color.fromARGB(213, 72, 123, 174),
          circularStrokeCap: CircularStrokeCap.round,
        ),
      ],
    );
  }
}
