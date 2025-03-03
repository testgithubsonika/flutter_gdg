import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget with dark theme
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

/// Home Page with button to navigate to Contact Details
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactDetailPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent, // Red button
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 6,
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

/// Contact Details Page with 2x2 Grid
class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({super.key});

  final List<Map<String, String>> contacts = const [
    {"name": "John Doe", "phone": "+1 234 567 890", "email": "johndoe@example.com"},
    {"name": "Jane Smith", "phone": "+1 987 654 321", "email": "janesmith@example.com"},
    {"name": "Robert Brown", "phone": "+1 555 111 222", "email": "robertbrown@example.com"},
    {"name": "Emily White", "phone": "+1 666 777 888", "email": "emilywhite@example.com"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Contact Details'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2x2 Grid Layout
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.1, // Adjust card size
                ),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ContactCard(
                    name: contact["name"]!,
                    phone: contact["phone"]!,
                    email: contact["email"]!,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Red Button
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Contact Card Widget for each person
class ContactCard extends StatelessWidget {
  final String name;
  final String phone;
  final String email;

  const ContactCard({super.key, required this.name, required this.phone, required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 50, color: Colors.redAccent),
            const SizedBox(height: 10),
            Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 5),
            Text(phone, style: const TextStyle(fontSize: 16, color: Colors.white70)),
            const SizedBox(height: 5),
            Text(email, style: const TextStyle(fontSize: 14, color: Colors.white60), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
