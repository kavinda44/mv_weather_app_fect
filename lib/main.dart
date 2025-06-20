import 'package:firebase_core/firebase_core.dart'; 
import 'package:flutter/material.dart';
import 'package:first_project/Screen/spash_screen.dart';


const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyCz_qW4v_UcaMY3Jva-RpR7vVxLDuRgGXo",
  appId: "1:1037412759360:android:87c82f4e5a786e98a4aca5",
  messagingSenderId: "1037412759360",
  projectId: "maldives-weather-app",
  storageBucket: "maldives-weather-app.appspot.com",
  
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:first_project/Screen/spash_screen.dart';
// import 'package:first_project/Screen/theme_provider.dart'; // Adjust the import based on your structure
// import 'package:provider/provider.dart'; // Import Provider

// const FirebaseOptions firebaseOptions = FirebaseOptions(
//   apiKey: "AIzaSyCz_qW4v_UcaMY3Jva-RpR7vVxLDuRgGXo",
//   appId: "1:1037412759360:android:87c82f4e5a786e98a4aca5",
//   messagingSenderId: "1037412759360",
//   projectId: "maldives-weather-app",
//   storageBucket: "maldives-weather-app.appspot.com",
// );

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: firebaseOptions); 
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(), // Provide the ThemeProvider
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context); // Access the theme provider

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: themeProvider.currentTheme, // Use the current theme
//       home: const MySplashScreen(), // Starting with the splash screen
//     );
//   }
// }
