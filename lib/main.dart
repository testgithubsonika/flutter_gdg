import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget with theme setup
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(),
    );
  }
}

/// Home page UI
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary; // Match with Navbar

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SizedBox(
          width: 250, // Optimized width
          height: 60, // Optimized height
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactDetailPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor, // Same as Navbar
              foregroundColor: Colors.white, // Text/Icon color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Smooth edges
              ),
              elevation: 6, // 3D shadow effect
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            icon: const Icon(Icons.contact_page, size: 28),
            label: const Text(
              'Contact Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

/// Contact details page with enhanced UI
class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Details'),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ContactInfoRow(icon: Icons.person, label: 'Name:', value: 'John Doe'),
                const ContactInfoRow(icon: Icons.phone, label: 'Phone:', value: '+1 234 567 890'),
                const ContactInfoRow(icon: Icons.email, label: 'Email:', value: 'johndoe@example.com'),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor, // Same as AppBar
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Back to Home'),
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

/// A reusable row widget for displaying contact info
class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactInfoRow({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(width: 5),
          Expanded(
            child: Text(value, style: const TextStyle(fontSize: 18), overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}
