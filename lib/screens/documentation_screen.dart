import 'package:flutter/material.dart';

class DocumentationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Documentation")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildSectionCard(
                  context,
                  "1. Overview",
                  "The Crop Disease Detection Application is an AI-driven platform designed to assist farmers in diagnosing crop diseases and optimizing agricultural decisions. The application integrates AI and user data to generate personalized solutions, offering farmers real-time insights into crop health, disease prevention, and market trends."
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "2. How the Application Works",
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSubSectionTitle("2.1 Data Collection"),
                      _buildSectionContent(
                        "To provide accurate and personalized recommendations, the application gathers the following details from users:"
                      ),
                      _buildSubSectionTitle("Personal Information"),
                      _buildBulletPoints([
                        "fullName (string) – The farmer’s name",
                        "gender (string) – Gender identity",
                        "age (string) – Age of the farmer",
                        "mobileNumber (string) – Contact number",
                        "userId (string) – Unique identifier for the user",
                        "createdAt (timestamp) – Account creation date",
                        "updatedAt (timestamp) – Last updated timestamp",
                      ]),
                      _buildSubSectionTitle("Farming and Agricultural Data"),
                      _buildBulletPoints([
                        "farmingExperience (string) – Years of farming experience",
                        "primaryCrop (string) – Main crop cultivated",
                        "secondaryCrops (array) – List of additional crops grown",
                        "soilType (string) – Soil classification (e.g., loamy, sandy, clay)",
                        "landSize (string) – Total land area in cultivation",
                        "landUnit (string) – Measurement unit (e.g., acres, hectares)",
                        "irrigationSource (string) – Primary source of water (e.g., borewell, river, rain-fed)",
                        "organicFarming (string) – Whether organic farming practices are followed",
                      ]),
                      _buildSubSectionTitle("Socio-Economic and Regional Data"),
                      _buildBulletPoints([
                        "annualIncome (string) – Yearly income from agriculture",
                        "district (string) – District of residence",
                        "state (string) – State of residence",
                        "village (string) – Village name",
                        "governmentSchemes (array) – List of government schemes availed",
                        "hasSmartphone (string) – Whether the farmer owns a smartphone",
                        "preferredLanguage (string) – Language preference for communication",
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "2.2 Image or Text-Based Crop Issue Submission",
                  "The farmer uploads an image of the affected crop or provides a text description of the issue.\n\n"
                  "The image is analyzed using computer vision models trained on diverse plant disease datasets.\n\n"
                  "If text is provided, Natural Language Processing (NLP) models analyze the symptoms and cross-reference them with disease databases."
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "2.3 AI-Powered Disease Detection & Personalized Recommendations",
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionContent(
                        "The collected user data, along with the uploaded image or text, is sent to Gemini AI for analysis.\n\n"
                        "The AI model considers multiple factors, including:"
                      ),
                      _buildBulletPoints([
                        "Soil type – To check how soil conditions contribute to the disease",
                        "Weather conditions – To assess climate impact",
                        "Crop type & region – To filter region-specific diseases",
                        "Previous farming experience – To tailor recommendations based on expertise",
                        "Government schemes – To suggest financial support options",
                      ]),
                      _buildSectionContent(
                        "Based on the analysis, the system generates:"
                      ),
                      _buildBulletPoints([
                        "Disease identification report",
                        "Recommended treatments (organic and chemical solutions)",
                        "Prevention tips",
                        "Government schemes & financial aid suggestions",
                        "Market insights & crop price trends",
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "2.4 Actionable Insights for Farmers",
                  "The AI delivers clear and actionable steps in the farmer’s preferred language.\n\n"
                  "Farmers receive alerts and reminders about:"
                ),
                _buildBulletPoints([
                  "Pest control & prevention",
                  "Optimal harvesting time",
                  "Weather-based farming strategies",
                ]),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "3. Features & Functionalities",
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSubSectionTitle("3.1 AI-Driven Crop Disease Diagnosis"),
                      _buildBulletPoints([
                        "Image recognition to detect plant diseases.",
                        "Text-based analysis to provide crop health recommendations.",
                        "Real-time AI-powered treatment suggestions.",
                      ]),
                      _buildSubSectionTitle("3.2 Personalized Farming Insights"),
                      _buildBulletPoints([
                        "Insights tailored based on soil type, region, and government schemes.",
                        "AI-based weather analysis for optimal farming strategies.",
                        "Smart notifications for preventive disease measures.",
                      ]),
                      _buildSubSectionTitle("3.3 Free, Multi-Language Support"),
                      _buildBulletPoints([
                        "Completely free-to-use platform.",
                        "Available in multiple Indian languages for accessibility.",
                        "Voice-enabled support for farmers with limited literacy.",
                      ]),
                      _buildSubSectionTitle("3.4 Market Intelligence & Price Predictions"),
                      _buildBulletPoints([
                        "AI-driven crop price trend predictions.",
                        "Market insights on demand, supply, and seasonal trends.",
                        "Personalized recommendations for profitable crops based on regional demand.",
                      ]),
                      _buildSubSectionTitle("3.5 Integration with Government Schemes"),
                      _buildBulletPoints([
                        "AI matches farmers with relevant government subsidies and schemes.",
                        "Guidance on how to apply for financial aid.",
                      ]),
                      _buildSubSectionTitle("3.6 Smart Agricultural Planning"),
                      _buildBulletPoints([
                        "Crop rotation and soil health recommendations.",
                        "AI-generated seasonal crop suggestions.",
                        "Automated yield forecasting based on farming patterns.",
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                _buildSectionCard(
                  context,
                  "4. Future Enhancements",
                  _buildBulletPoints([
                    "Blockchain-based farm produce authentication for better market trust.",
                    "AI-driven pest control advisory using weather & satellite data.",
                    "Community forums for farmers to share experiences.",
                    "Offline functionality for low-network regions.",
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, String title, dynamic content) {
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
            content is String
                ? Text(
                    content,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70, // Changed to a lighter color for better readability
                    ),
                  )
                : content,
          ],
        ),
      ),
    );
  }

  Widget _buildSubSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.lightBlueAccent, // Changed to a lighter color for better readability
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white70, // Changed to a lighter color for better readability
      ),
    );
  }

  Widget _buildBulletPoints(List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("• ", style: TextStyle(fontSize: 16, color: Colors.white70)), // Changed to a lighter color for better readability
            Expanded(child: Text(point, style: TextStyle(fontSize: 16, color: Colors.white70))), // Changed to a lighter color for better readability
          ],
        ),
      )).toList(),
    );
  }
}
