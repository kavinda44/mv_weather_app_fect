// // import 'package:first_project/Screen/about_us.dart';
// // import 'package:first_project/Screen/contact_us.dart';
// // import 'package:first_project/Screen/project_screen.dart';
// // import 'package:first_project/Screen/policies_screen.dart';
// // import 'package:flutter/material.dart';

// // class NavBar extends StatelessWidget {
// //   const NavBar({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
        
// //         padding: EdgeInsets.zero,
// //         children: [
// //           UserAccountsDrawerHeader(
// //             accountName: const Text(
// //               'Federation for Environment,',
// //               style:
// //                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
// //             ),
// //             accountEmail: const Text('Climate & Technology',
// //                 style: TextStyle(
// //                     color: Colors.black, fontWeight: FontWeight.bold)),
// // currentAccountPicture: Transform.scale(
// //   scale: 1.8,  
// //   child: Container(
// //     decoration: BoxDecoration(
// //       image: DecorationImage(
// //         image: AssetImage('assets/fectmvlogo.png'),
// //       ),
// //     ),
// //   ),
// // ),
// //             decoration: const BoxDecoration(
// //               color: Color.fromRGBO(33, 150, 243, 1),
// //             ),
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.web),
// //             title: const Text('About FECT'),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => const AboutUs()),
// //               );
// //             }, 
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.mail),
// //             title: const Text('Contact Us'),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => const ContactUs()),
// //               );
// //             },
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.location_city),
// //             title: const Text('Our Location'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.task),
// //             title: const Text('Our Projects'),
// //             onTap: () {
// //                Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => const Projects()),
// //               );
// //             },
// //           ),
// //           const Divider(),
// //           ListTile(
// //             leading: const Icon(Icons.share),
// //             title: const Text('Share'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.settings),
// //             title: const Text('Settings'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.description),
// //             title: const Text('Policies'),
// //             onTap: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => const PoliciesPage()),
// //               );
              
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
import 'package:first_project/Screen/about_us.dart';
import 'package:first_project/Screen/contact_us.dart';
import 'package:first_project/Screen/project_screen.dart';
import 'package:first_project/Screen/policies_screen.dart';
import 'package:first_project/Screen/settings_screen.dart';
import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Federation for Environment,',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            accountEmail: const Text(
              'Climate & Technology',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 120, 
              child: ClipOval(
                child: Image.asset(
                  'assets/fectmvlogo.png',
                  fit: BoxFit.contain,
                  height: 180, 
                  width: 180,   
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF01AAC1),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('About FECT'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUs()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUs()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_city),
            title: const Text('Our Location'),
            onTap: () {
              // Add navigation for the location page
            },
          ),
          ListTile(
            leading: const Icon(Icons.task),
            title: const Text('Our Projects'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Projects()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () {
              // Add functionality to share
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
               Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SettingsScreen()),
);

            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Policies'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PoliciesPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:first_project/Screen/about_us.dart';
// import 'package:first_project/Screen/contact_us.dart';
// import 'package:first_project/Screen/project_screen.dart';
// import 'package:first_project/Screen/policies_screen.dart';
// import 'package:first_project/Screen/settings_screen.dart'; // Import settings screen
// import 'package:flutter/material.dart';

// class NavBar extends StatelessWidget {
//   final bool isDarkMode; // Add a parameter for dark mode state
//   final Function(bool) onThemeChanged; // Add a callback for theme change

//   const NavBar({
//     Key? key,
//     required this.isDarkMode,
//     required this.onThemeChanged, // Initialize the parameters
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: const Text(
//               'Federation for Environment,',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//             accountEmail: const Text(
//               'Climate & Technology',
//               style: TextStyle(
//                 color: Colors.black87,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 16,
//               ),
//             ),
//             currentAccountPicture: CircleAvatar(
//               backgroundColor: Colors.transparent,
//               radius: 120,
//               child: ClipOval(
//                 child: Image.asset(
//                   'assets/fectmvlogo.png',
//                   fit: BoxFit.contain,
//                   height: 180,
//                   width: 180,
//                 ),
//               ),
//             ),
//             decoration: const BoxDecoration(
//               color: Color(0xFF01AAC1),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.web),
//             title: const Text('About FECT'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const AboutUs()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.mail),
//             title: const Text('Contact Us'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ContactUs()),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.location_city),
//             title: const Text('Our Location'),
//             onTap: () {
//               // Add navigation for the location page
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.task),
//             title: const Text('Our Projects'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const Projects()),
//               );
//             },
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.share),
//             title: const Text('Share'),
//             onTap: () {
//               // Add functionality to share
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text('Settings'),
//             onTap: () {
//               // Navigate to Settings Page and pass the required arguments
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => SettingsScreen(
//                     isDarkMode: isDarkMode, // Pass current dark mode state
//                     onThemeChanged: onThemeChanged, // Pass callback to change theme
//                   ),
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.description),
//             title: const Text('Policies'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const PoliciesPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
