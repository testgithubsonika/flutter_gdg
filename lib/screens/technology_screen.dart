import 'package:flutter/material.dart';

class TechnologyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Technology")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Technology Features",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70, // Changed to a lighter color for better readability
                  ),
                ),
                SizedBox(height: 16),
                _buildFeatureItem(
                  context,
                  "React",
                  "JavaScript library for building the user interface.",
                ),
                _buildFeatureItem(
                  context,
                  "Vite",
                  "A modern build tool for fast development and bundling.",
                ),
                _buildFeatureItem(
                  context,
                  "Tailwind CSS",
                  "A utility-first CSS framework for designing responsive and customizable user interfaces.",
                ),
                _buildFeatureItem(
                  context,
                  "Lucid React",
                  "A React component library used to create clean and visually attractive user interfaces.",
                ),
                _buildFeatureItem(
                  context,
                  "AI Model Integration",
                  "The frontend interacts with a backend AI model (e.g., TensorFlow, Flask, or Node.js) to provide real-time crop disease predictions.",
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
