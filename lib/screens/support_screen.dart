import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Support")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Support",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70, // Changed to a lighter color for better readability
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Frequently Asked Questions",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent, // Changed to a lighter color for better readability
                  ),
                ),
                SizedBox(height: 8),
                _buildFAQItem(
                  "How do I install the app?",
                  "You can install the app from the App Store or Google Play Store. Simply search for 'Crop Disease Detection' and follow the installation instructions.",
                ),
                _buildFAQItem(
                  "How do I contact support?",
                  "You can contact support by emailing us at support@example.com or by filling out the support request form below.",
                ),
                _buildFAQItem(
                  "What should I do if the app crashes?",
                  "If the app crashes, please try restarting it. If the problem persists, contact support with details about the issue.",
                ),
                SizedBox(height: 16),
                Text(
                  "Contact Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent, // Changed to a lighter color for better readability
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Email: support@example.com",
                  style: TextStyle(fontSize: 16, color: Colors.white70), // Changed to a lighter color for better readability
                ),
                Text(
                  "Phone: +1 234 567 890",
                  style: TextStyle(fontSize: 16, color: Colors.white70), // Changed to a lighter color for better readability
                ),
                SizedBox(height: 16),
                Text(
                  "Submit a Support Request",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent, // Changed to a lighter color for better readability
                  ),
                ),
                SizedBox(height: 8),
                _buildSupportForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white70, // Changed to a lighter color for better readability
            ),
          ),
          SizedBox(height: 4),
          Text(
            answer,
            style: TextStyle(fontSize: 16, color: Colors.white70), // Changed to a lighter color for better readability
          ),
        ],
      ),
    );
  }

  Widget _buildSupportForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Name",
            labelStyle: TextStyle(color: Colors.white70), // Changed to a lighter color for better readability
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // Changed to a lighter color for better readability
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent), // Changed to a lighter color for better readability
            ),
          ),
          style: TextStyle(color: Colors.white70), // Changed to a lighter color for better readability
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(color: Colors.white70), // Changed to a lighter color for better readability
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // Changed to a lighter color for better readability
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent), // Changed to a lighter color for better readability
            ),
          ),
          style: TextStyle(color: Colors.white70), // Changed to a lighter color for better readability
        ),
        SizedBox(height: 8),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            labelText: "Message",
            labelStyle: TextStyle(color: Colors.white70), // Changed to a lighter color for better readability
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // Changed to a lighter color for better readability
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent), // Changed to a lighter color for better readability
            ),
          ),
          style: TextStyle(color: Colors.white70), // Changed to a lighter color for better readability
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Handle form submission
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent, // Changed to a lighter color for better readability
          ),
          child: Text("Submit"),
        ),
      ],
    );
  }
}
