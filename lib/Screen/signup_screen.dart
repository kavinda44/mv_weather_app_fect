// import 'package:flutter/material.dart';
// import 'package:first_project/Utils/colors.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   void _signUp() {
//     if (_formKey.currentState!.validate()) {
//       String name = _nameController.text;
//       String email = _emailController.text;
//       String password = _passwordController.text;

//       print("Name: $name");
//       print("Email: $email");
//       print("Password: $password");
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
//               "Sign up",
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
//                 margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.85),
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Column(
//                   children: [
//                     // Name Text Field
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 20),
//                       decoration: BoxDecoration(
//                         color: backgroundColor1.withOpacity(0.6),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: TextFormField(
//                         controller: _nameController,
//                         keyboardType: TextInputType.name,
//                         decoration: const InputDecoration(
//                           hintText: "Name",
//                           hintStyle: TextStyle(color: Colors.black),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         ),
//                         style: const TextStyle(color: Colors.black),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your name';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                     // Email Text Field
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
//                     // Password Text Field
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 20),
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
//                     // Sign Up Button
//                     ElevatedButton(
//                       onPressed: _signUp,
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                         backgroundColor: backgroundColor1,
//                       ),
//                       child: const Text(
//                         "Sign up",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
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

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/Utils/colors.dart';
import 'package:first_project/Screen/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        // Create user with email and password
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text);

        // Update display name
        await userCredential.user!.updateDisplayName(_nameController.text);
        await userCredential.user!.reload();

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Sign Up Successful!")),
        );

        // Navigate to sign-in screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignInScreen()),
        );
      } on FirebaseAuthException catch (e) {
        String errorMessage;
        if (e.code == 'weak-password') {
          errorMessage = 'The password provided is too weak.';
        } else if (e.code == 'email-already-in-use') {
          errorMessage = 'The account already exists for that email.';
        } else if (e.code == 'invalid-email') {
          errorMessage = 'The email address is not valid.';
        } else {
          errorMessage = 'Error: ${e.message}';
        }

        // Show error message
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
    body: SafeArea(  // Ensures the layout respects the device's safe areas
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                "Sign up",
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
                  margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
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
                          controller: _nameController,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          ),
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
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
                        margin: const EdgeInsets.symmetric(vertical: 20),
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
                          : ElevatedButton(
                              onPressed: _signUp,
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                backgroundColor: backgroundColor1,
                              ),
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
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
      ),
    ),
  );
}

}
