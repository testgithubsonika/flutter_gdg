import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getting Started")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildSectionCard(
                  context,
                  "Welcome to the Getting Started Page!",
                  "This guide will help you get started with our application. Follow the steps below to set up and start using the app."
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "Introduction",
                  "This guide will help you get started with our application. Follow the steps below to set up and start using the app."
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "Installation",
                  "1. Download the app from the App Store or Google Play Store.\n"
                  "2. Open the app and sign up for a new account or log in with your existing account.\n"
                  "3. Follow the on-screen instructions to complete the setup."
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "Quick Start Guide",
                  "1. Navigate to the Home screen to view the main features of the app.\n"
                  "2. Use the menu to access different sections such as Features, Support, Documentation, and more.\n"
                  "3. Explore the app and familiarize yourself with its functionalities."
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "Resources",
                  "For more information, visit our documentation or contact support."
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to documentation or support page
                  },
                  child: Text("View Documentation"),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to support page
                  },
                  child: Text("Contact Support"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, String title, String content) {
    return Card(
      color: Colors.blueGrey[800],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent, // Changed to a lighter color for better readability
              ),
            ),
            SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70, // Changed to a lighter color for better readability
              ),
            ),
          ],
        ),
      ),
    );
  }
}
