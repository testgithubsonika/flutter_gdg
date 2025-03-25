import 'package:flutter/material.dart';
import 'screens/features_screen.dart';
import 'screens/support_screen.dart';
import 'screens/documentation_screen.dart';
import 'screens/getting_started_screen.dart';
import 'screens/contact_us_screen.dart';
import 'screens/technology_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CyberPunks',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.blueGrey[900],
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[800],
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/features': (context) => FeaturesScreen(),
        '/support': (context) => SupportScreen(),
        '/documentation': (context) => DocumentationScreen(),
        '/getting-started': (context) => GettingStartedScreen(),
        '/contact-us': (context) => ContactUsScreen(),
        '/technology': (context) => TechnologyScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CyberPunks")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(context, "Features", "/features"),
                  _buildButton(context, "Support", "/support"),
                  _buildButton(context, "Documentation", "/documentation"),
                  _buildButton(context, "Getting Started", "/getting-started"),
                  _buildButton(context, "Contact Us", "/contact-us"),
                  _buildButton(context, "Technology", "/technology"),
                ],
              ),
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, String route) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(text),
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
