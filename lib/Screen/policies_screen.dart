import 'package:flutter/material.dart';

class PoliciesPage extends StatelessWidget {
  const PoliciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Policies',
          style: TextStyle(
            fontFamily: 'Poppins', // Use Poppins font
          ),
        ),
        backgroundColor: const Color(0xFF4CA7AF),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Privacy Policy',
              style: TextStyle(
                fontFamily: 'Poppins', // Use Poppins font
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This app respects your privacy. We do not collect personal data without your consent. All data collected is used to enhance user experience and is stored securely. If you have any questions, feel free to contact us at cilmate.mv.',
              style: TextStyle(
                fontFamily: 'Poppins', // Use Poppins font
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            const Text(
              'Terms of Service',
              style: TextStyle(
                fontFamily: 'Poppins', // Use Poppins font
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'By using this app, you agree to the following terms. The app is provided as-is, without warranties of any kind. We are not liable for any damage or loss caused by the use of this app.',
              style: TextStyle(
                fontFamily: 'Poppins', // Use Poppins font
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            const Text(
              'Cookies Policy',
              style: TextStyle(
                fontFamily: 'Poppins', // Use Poppins font
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Our app uses cookies to improve your experience. These cookies are used to store user preferences and provide personalized content. You can choose to disable cookies through your browser settings.',
              style: TextStyle(
                fontFamily: 'Poppins', // Use Poppins font
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
