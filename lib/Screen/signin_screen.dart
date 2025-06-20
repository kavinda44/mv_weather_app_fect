
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:first_project/Utils/colors.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false; 

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Future<void> _signIn() async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true; 
//       });

//       try {
      
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: _emailController.text.trim(),
//           password: _passwordController.text.trim(),
//         );

       
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("Sign In Successful!")),
//         );
      

//       } on FirebaseAuthException catch (e) {
//         String errorMessage;
//         if (e.code == 'user-not-found') {
//           errorMessage = 'No user found for that email.';
//         } else if (e.code == 'wrong-password') {
//           errorMessage = 'Wrong password provided.';
//         } else {
//           errorMessage = 'Error: ${e.message}';
//         }

       
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text(errorMessage)),
//         );
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("An error occurred. Please try again.")),
//         );
//       } finally {
//         setState(() {
//           _isLoading = false; 
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         color: backgroundColor1, 
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 50),
//             const Text(
//               "Sign in",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//             const SizedBox(height: 40),
//             Form(
//               key: _formKey,
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 80),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.85),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Column(
//                   children: [
                   
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 40),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: const InputDecoration(
//                           hintText: "Email",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//                             return 'Please enter a valid email';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
                   
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 10),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         decoration: const InputDecoration(
//                           hintText: "Password",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           } else if (value.length < 6) {
//                             return 'Password must be at least 6 characters';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     const SizedBox(height: 20),
                    
//                     _isLoading
//                         ? const CircularProgressIndicator()
//                         : ElevatedButton(
//                             onPressed: _signIn,
//                             style: ElevatedButton.styleFrom(
//                               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(25),
//                               ),
//                               backgroundColor: backgroundColor1,
//                             ),
//                             child: const Text(
//                               "Sign in",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
           
//             const Text(
//               "climate.mv",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.white70,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// } next

// import 'package:first_project/Screen/weather_page.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:first_project/Utils/colors.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false; 

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Future<void> _signIn() async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true; 
//       });

//       try {
       
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: _emailController.text.trim(),
//           password: _passwordController.text.trim(),
//         );

        
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const WeatherPage()), 
//         );

//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("Sign In Successful!")),
//         );

//       } on FirebaseAuthException catch (e) {
//         String errorMessage;
//         if (e.code == 'user-not-found') {
//           errorMessage = 'No user found for that email.';
//         } else if (e.code == 'wrong-password') {
//           errorMessage = 'Wrong password provided.';
//         } else {
//           errorMessage = 'Error: ${e.message}';
//         }

//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text(errorMessage)),
//         );
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("An error occurred. Please try again.")),
//         );
//       } finally {
//         setState(() {
//           _isLoading = false; 
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         color: backgroundColor1, 
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 50),
//             const Text(
//               "Sign in",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//             const SizedBox(height: 40),
//             Form(
//               key: _formKey,
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 80),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.85),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 40),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: const InputDecoration(
//                           hintText: "Email",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//                             return 'Please enter a valid email';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 10),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         decoration: const InputDecoration(
//                           hintText: "Password",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           } else if (value.length < 6) {
//                             return 'Password must be at least 6 characters';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     _isLoading
//                         ? const CircularProgressIndicator()
//                         : ElevatedButton(
//                             onPressed: _signIn,
//                             style: ElevatedButton.styleFrom(
//                               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(25),
//                               ),
//                               backgroundColor: backgroundColor1,
//                             ),
//                             child: const Text(
//                               "Sign in",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
//             const Text(
//               "climate.mv",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.white70,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:first_project/Screen/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/Utils/colors.dart';



class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false; 

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true; 
      });

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WeatherPage()), 
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Sign In Successful!")),
        );

      } on FirebaseAuthException catch (e) {
        String errorMessage;
        if (e.code == 'user-not-found') {
          errorMessage = 'No user found for that email.';
        } else if (e.code == 'wrong-password') {
          errorMessage = 'Wrong password provided.';
        } else {
          errorMessage = 'Error: ${e.message}';
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("An error occurred. Please try again.")),
        );
      } finally {
        setState(() {
          _isLoading = false; 
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: backgroundColor1, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 40),
            Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.85),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: backgroundColor1.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: backgroundColor1.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    _isLoading
                        ? const CircularProgressIndicator()
                        : Container(
                            width: double.infinity, // Full width for the button
                            child: ElevatedButton(
                              onPressed: _signIn,
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                backgroundColor: backgroundColor1,
                              ),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "climate.mv",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:first_project/Screen/weather_page.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:first_project/Utils/colors.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false; 

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Future<void> _signIn() async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true; 
//       });

//       try {
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: _emailController.text.trim(),
//           password: _passwordController.text.trim(),
//         );

//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => WeatherPage(
//               isDarkMode: false, // Set based on your theme logic
//               onThemeChanged: (bool newValue) {
//                 // Implement your theme change logic here
//               },
//             ),
//           ),
//         );

//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("Sign In Successful!")),
//         );

//       } on FirebaseAuthException catch (e) {
//         String errorMessage;
//         if (e.code == 'user-not-found') {
//           errorMessage = 'No user found for that email.';
//         } else if (e.code == 'wrong-password') {
//           errorMessage = 'Wrong password provided.';
//         } else {
//           errorMessage = 'Error: ${e.message}';
//         }

//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text(errorMessage)),
//         );
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("An error occurred. Please try again.")),
//         );
//       } finally {
//         setState(() {
//           _isLoading = false; 
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         color: backgroundColor1, 
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 50),
//             const Text(
//               "Sign in",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//             const SizedBox(height: 40),
//             Form(
//               key: _formKey,
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.85),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 20),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _emailController,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: const InputDecoration(
//                           hintText: "Email",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//                             return 'Please enter a valid email';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 10),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         decoration: const InputDecoration(
//                           hintText: "Password",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           } else if (value.length < 6) {
//                             return 'Password must be at least 6 characters';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     _isLoading
//                         ? const CircularProgressIndicator()
//                         : Container(
//                             width: double.infinity, // Full width for the button
//                             child: ElevatedButton(
//                               onPressed: _signIn,
//                               style: ElevatedButton.styleFrom(
//                                 padding: const EdgeInsets.symmetric(vertical: 15),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(25),
//                                 ),
//                                 backgroundColor: backgroundColor1,
//                               ),
//                               child: const Text(
//                                 "Sign in",
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
//             const Text(
//               "climate.mv",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.white70,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
