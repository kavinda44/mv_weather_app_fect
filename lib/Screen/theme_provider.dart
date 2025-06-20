// import 'package:flutter/material.dart';

// class ThemeProvider with ChangeNotifier {
//   bool _isDarkMode = false; // Initial theme state

//   // Getter for current theme state
//   bool get isDarkMode => _isDarkMode;

//   // Method to toggle the theme
//   void toggleTheme() {
//     _isDarkMode = !_isDarkMode;
//     notifyListeners(); // Notify listeners to rebuild with the new theme
//   }

//   // Method to get the current theme data
//   ThemeData get currentTheme {
//     return _isDarkMode ? darkTheme : lightTheme;
//   }

//   // Light theme
//   final ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.blue,
//     // Add more light theme properties here
//   );

//   // Dark theme
//   final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Colors.blueAccent,
//     // Add more dark theme properties here
//   );
// }
