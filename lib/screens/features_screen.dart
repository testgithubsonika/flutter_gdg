import 'package:flutter/material.dart';

class FeaturesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Features")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Features",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70, // Changed to a lighter color for better readability
                  ),
                ),
                SizedBox(height: 16),
                _buildFeatureItem(
                  context,
                  "Real-time Crop Disease Detection",
                  "Upload crop images and receive predictions about potential diseases.",
                ),
                _buildFeatureItem(
                  context,
                  "Interactive UI",
                  "A clean and responsive interface built with React and styled with Tailwind CSS.",
                ),
                _buildFeatureItem(
                  context,
                  "Fast Development and Build Process",
                  "The project uses Vite for a faster development and build experience.",
                ),
                _buildFeatureItem(
                  context,
                  "AI Integration",
                  "Interact with an AI model to detect diseases in crops and provide insights into how to manage them.",
                ),
                _buildFeatureItem(
                  context,
                  "Lucid React for Enhanced UI Components",
                  "Use of Lucid React to create visually appealing and intuitive user interfaces.",
                ),
                SizedBox(height: 16),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(BuildContext context, String title, String description) {
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
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent, // Changed to a lighter color for better readability
              ),
            ),
            SizedBox(height: 4),
            Text(
              description,
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

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.blueGrey[900],
      child: Center(
        child: Text(
          "© 2025 CyberPunks | All Rights Reserved",
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ),
    );
  }
}
