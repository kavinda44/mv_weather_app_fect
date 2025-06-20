// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:first_project/Screen/more_details_page.dart';
// import 'package:first_project/Utils/colors.dart';
// import 'package:first_project/Utils/navbar.dart';

// class WeatherPage extends StatefulWidget {
//   const WeatherPage({super.key});

//   @override
//   _WeatherPageState createState() => _WeatherPageState();
// }

// class _WeatherPageState extends State<WeatherPage> {
//   final List<String> _cityNames = ['Malé', 'Gan Island', 'Minicoy Island'];
//   final List<Map<String, dynamic>> _weatherData = [];
//   bool _isLoading = true;
//   bool _hasError = false;

//   final String _apiKey = '3fcc0c2c51c1441cbea91709242309';

//   Future<void> _fetchWeather() async {
//     setState(() {
//       _isLoading = true;
//     });
//     _weatherData.clear();
//     _hasError = false;
//     try {
//       for (String cityName in _cityNames) {
//         final url = Uri.parse('https://api.weatherapi.com/v1/current.json?key=$_apiKey&q=$cityName');
//         final response = await http.get(url);
//         if (response.statusCode == 200) {
//           final data = json.decode(response.body);
//           _weatherData.add({
//             'city': cityName,
//             'temperature': data['current']['temp_c'],
//             'description': data['current']['condition']['text'],
//             'humidity': data['current']['humidity'],
//             'windSpeed': data['current']['wind_kph'],
//             'weatherIcon': data['current']['condition']['icon'],
//             'precipitation': data['current']['precip_mm'], 
//             'pressure': data['current']['pressure_mb'],    
//             'uvIndex': data['current']['uv'],             
//           });
//         } else {
//           throw Exception('Failed to load weather data');
//         }
//       }
//     } catch (error) {
//       _hasError = true;
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _fetchWeather();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Real-Time Weather',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: backgroundColor1,
//       ),
//       drawer: const NavBar(), // Moved drawer to Scaffold
//       body: Container(
//         color: backgroundColor1,
//         padding: const EdgeInsets.all(16.0),
//         child: _isLoading
//             ? Center(child: CircularProgressIndicator(color: primaryColor))
//             : _hasError
//                 ? Center(
//                     child: Text(
//                       'Error fetching weather data. Please try again later.',
//                       style: TextStyle(color: textColor1, fontFamily: 'Poppins'),
//                     ),
//                   )
//                 : ListView.builder(
//                     itemCount: _weatherData.length,
//                     itemBuilder: (context, index) {
//                       final weather = _weatherData[index];
//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => MoreDetailsPage(weather: weather),
//                             ),
//                           );
//                         },
//                         child: Card(
//                           elevation: 8,
//                           color: backgroundColor2,
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//                           child: Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   '${weather['city']}',
//                                   style: TextStyle(
//                                     fontSize: 26,
//                                     fontWeight: FontWeight.bold,
//                                     color: primaryColor,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Image.network('https:${weather['weatherIcon']}'),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   '${weather['temperature']?.toStringAsFixed(1) ?? 'N/A'}°C',
//                                   style: TextStyle(
//                                     fontSize: 40,
//                                     fontWeight: FontWeight.bold,
//                                     color: primaryColor,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   weather['description'] ?? 'N/A',
//                                   style: TextStyle(fontSize: 20, color: Colors.grey[700], fontFamily: 'Poppins'),
//                                 ),
//                                 const SizedBox(height: 20),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Column(
//                                       children: [
//                                         Icon(Icons.water_drop, color: primaryColor),
//                                         const SizedBox(height: 5),
//                                         Text(
//                                           'Humidity',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                         Text(
//                                           '${weather['humidity']}%',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                       ],
//                                     ),
//                                     Column(
//                                       children: [
//                                         Icon(Icons.air, color: primaryColor),
//                                         const SizedBox(height: 5),
//                                         Text(
//                                           'Wind Speed',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                         Text(
//                                           '${weather['windSpeed']} kph',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _fetchWeather,
//         backgroundColor: primaryColor,
//         child: Icon(Icons.refresh, color: textColor1),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:first_project/Screen/more_details_page.dart';
import 'package:first_project/Utils/colors.dart';
import 'package:first_project/Utils/navbar.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final List<String> _cityNames = ['Malé', 'Gan Island', 'Minicoy Island'];
  final List<Map<String, dynamic>> _weatherData = [];
  bool _isLoading = true;
  bool _hasError = false;

  final String _apiKey = '3fcc0c2c51c1441cbea91709242309';

  Future<void> _fetchWeather() async {
    setState(() {
      _isLoading = true;
    });
    _weatherData.clear();
    _hasError = false;
    try {
      for (String cityName in _cityNames) {
        final url = Uri.parse('https://api.weatherapi.com/v1/current.json?key=$_apiKey&q=$cityName');
        final response = await http.get(url);
        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          _weatherData.add({
            'city': cityName,
            'temperature': data['current']['temp_c'],
            'description': data['current']['condition']['text'],
            'humidity': data['current']['humidity'],
            'windSpeed': data['current']['wind_kph'],
            'weatherIcon': data['current']['condition']['icon'],
            'precipitation': data['current']['precip_mm'], 
            'pressure': data['current']['pressure_mb'],    
            'uvIndex': data['current']['uv'],             
          });
        } else {
          throw Exception('Failed to load weather data');
        }
      }
    } catch (error) {
      _hasError = true;
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  String getWeatherIcon(String description) {
    switch (description.toLowerCase()) {
      case 'partly cloudy':
        return 'assets/partly_cloudy.png';
      case 'rain':
      case 'rainy':
        return 'assets/rainy.png';
      case 'patchy rain nearby': 
       return 'assets/partly_rain_nearby.png';
      case 'windy':
        return 'assets/windy.png';
      case 'clear':
      case 'sunny':
        return 'assets/clear.png';
      default:
        return 'assets/clear.png'; // Default icon if no match
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Real-Time Weather',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor1,
      ),
      drawer: const NavBar(),
      body: Container(
        color: backgroundColor2,
        padding: const EdgeInsets.all(16.0),
        child: _isLoading
            ? Center(child: CircularProgressIndicator(color: primaryColor))
            : _hasError
                ? Center(
                    child: Text(
                      'Error fetching weather data. Please try again later.',
                      style: TextStyle(color: textColor1, fontFamily: 'Poppins'),
                    ),
                  )
                : ListView.builder(
                    itemCount: _weatherData.length,
                    itemBuilder: (context, index) {
                      final weather = _weatherData[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoreDetailsPage(weather: weather),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 8,
                          color: backgroundColor3,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '${weather['city']}',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // Use the local asset image
                                Image.asset(
                                  getWeatherIcon(weather['description']),
                                  height: 100, // Adjust the size as necessary
                                  width: 100,
                                ),
                                const SizedBox(height: 10),
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
                                Text(
                                  weather['description'] ?? 'N/A',
                                  style: TextStyle(fontSize: 20, color: Colors.grey[700], fontFamily: 'Poppins'),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.water_drop, color: primaryColor),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Humidity',
                                          style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
                                        ),
                                        Text(
                                          '${weather['humidity']}%',
                                          style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.air, color: primaryColor),
                                        const SizedBox(height: 5),
                                        Text(
                                          'Wind Speed',
                                          style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
                                        ),
                                        Text(
                                          '${weather['windSpeed']} kph',
                                          style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchWeather,
        backgroundColor: primaryColor,
        child: Icon(Icons.refresh, color: textColor1),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:first_project/Screen/more_details_page.dart';
// import 'package:first_project/Utils/colors.dart';
// import 'package:first_project/Utils/navbar.dart';

// class WeatherPage extends StatefulWidget {
//   final bool isDarkMode; // Add this parameter
//   final Function(bool) onThemeChanged; // Add this parameter

//   const WeatherPage({
//     super.key,
//     required this.isDarkMode, // Initialize the parameter
//     required this.onThemeChanged, // Initialize the parameter
//   });

//   @override
//   _WeatherPageState createState() => _WeatherPageState();
// }

// class _WeatherPageState extends State<WeatherPage> {
//   final List<String> _cityNames = ['Malé', 'Gan Island', 'Minicoy Island'];
//   final List<Map<String, dynamic>> _weatherData = [];
//   bool _isLoading = true;
//   bool _hasError = false;

//   final String _apiKey = '3fcc0c2c51c1441cbea91709242309';

//   Future<void> _fetchWeather() async {
//     setState(() {
//       _isLoading = true;
//     });
//     _weatherData.clear();
//     _hasError = false;
//     try {
//       for (String cityName in _cityNames) {
//         final url = Uri.parse('https://api.weatherapi.com/v1/current.json?key=$_apiKey&q=$cityName');
//         final response = await http.get(url);
//         if (response.statusCode == 200) {
//           final data = json.decode(response.body);
//           _weatherData.add({
//             'city': cityName,
//             'temperature': data['current']['temp_c'],
//             'description': data['current']['condition']['text'],
//             'humidity': data['current']['humidity'],
//             'windSpeed': data['current']['wind_kph'],
//             'weatherIcon': data['current']['condition']['icon'],
//             'precipitation': data['current']['precip_mm'],
//             'pressure': data['current']['pressure_mb'],
//             'uvIndex': data['current']['uv'],
//           });
//         } else {
//           throw Exception('Failed to load weather data');
//         }
//       }
//     } catch (error) {
//       _hasError = true;
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   String getWeatherIcon(String description) {
//     switch (description.toLowerCase()) {
//       case 'partly cloudy':
//         return 'assets/partly_cloudy.png';
//       case 'rain':
//       case 'rainy':
//         return 'assets/rainy.png';
//       case 'patchy rain nearby':
//         return 'assets/partly_rain_nearby.png';
//       case 'windy':
//         return 'assets/windy.png';
//       case 'clear':
//       case 'sunny':
//         return 'assets/clear.png';
//       default:
//         return 'assets/clear.png'; // Default icon if no match
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _fetchWeather();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Real-Time Weather',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: backgroundColor1,
//       ),
//       drawer: NavBar(
//         isDarkMode: widget.isDarkMode, // Pass the dark mode state
//         onThemeChanged: widget.onThemeChanged, // Pass the theme change callback
//       ),
//       body: Container(
//         color: widget.isDarkMode ? backgroundColor4 : backgroundColor2, // Use appropriate background color
//         padding: const EdgeInsets.all(16.0),
//         child: _isLoading
//             ? Center(child: CircularProgressIndicator(color: primaryColor))
//             : _hasError
//                 ? Center(
//                     child: Text(
//                       'Error fetching weather data. Please try again later.',
//                       style: TextStyle(color: textColor1, fontFamily: 'Poppins'),
//                     ),
//                   )
//                 : ListView.builder(
//                     itemCount: _weatherData.length,
//                     itemBuilder: (context, index) {
//                       final weather = _weatherData[index];
//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => MoreDetailsPage(weather: weather),
//                             ),
//                           );
//                         },
//                         child: Card(
//                           elevation: 8,
//                           color: widget.isDarkMode ? backgroundColor2 : backgroundColor3, // Use appropriate card color
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   '${weather['city']}',
//                                   style: TextStyle(
//                                     fontSize: 26,
//                                     fontWeight: FontWeight.bold,
//                                     color: primaryColor,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 // Use the local asset image
//                                 Image.asset(
//                                   getWeatherIcon(weather['description']),
//                                   height: 100, // Adjust the size as necessary
//                                   width: 100,
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   '${weather['temperature']?.toStringAsFixed(1) ?? 'N/A'}°C',
//                                   style: TextStyle(
//                                     fontSize: 40,
//                                     fontWeight: FontWeight.bold,
//                                     color: primaryColor,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                   weather['description'] ?? 'N/A',
//                                   style: TextStyle(fontSize: 20, color: Colors.grey[700], fontFamily: 'Poppins'),
//                                 ),
//                                 const SizedBox(height: 20),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Column(
//                                       children: [
//                                         Icon(Icons.water_drop, color: primaryColor),
//                                         const SizedBox(height: 5),
//                                         Text(
//                                           'Humidity',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                         Text(
//                                           '${weather['humidity']}%',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                       ],
//                                     ),
//                                     Column(
//                                       children: [
//                                         Icon(Icons.air, color: primaryColor),
//                                         const SizedBox(height: 5),
//                                         Text(
//                                           'Wind Speed',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                         Text(
//                                           '${weather['windSpeed']} kph',
//                                           style: TextStyle(fontSize: 16, color: primaryColor, fontFamily: 'Poppins'),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _fetchWeather,
//         backgroundColor: primaryColor,
//         child: Icon(Icons.refresh, color: textColor1),
//       ),
//     );
//   }
// }
