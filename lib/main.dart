import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold), // Title in Red
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.redAccent, // Red color for icons
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
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            icon: const Icon(Icons.contact_page, size: 28),
            label: const Text(
              'Contact Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

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
        title: const Text(
          'Contact Details',
          style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold), // Title in Red
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.redAccent, // Red color for icons
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: contacts.map((contact) {
                  return Expanded(
                    child: ContactCard(
                      name: contact["name"]!,
                      phone: contact["phone"]!,
                      email: contact["email"]!,
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 35),
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back to Home', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 50, color: Colors.redAccent),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(phone, style: const TextStyle(fontSize: 14, color: Colors.white70)),
            const SizedBox(height: 6),
            Text(email, style: const TextStyle(fontSize: 13, color: Colors.white60), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
