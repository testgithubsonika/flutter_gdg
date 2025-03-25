import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us")),
      body: ContactDetailPage(),
    );
  }
}

class ContactDetailPage extends StatelessWidget {
  const ContactDetailPage({super.key});

  final List<Map<String, String>> contacts = const [
    {"name": "Dhino kevin", "phone": "+1 234 567 890", "email": "kevin@example.com"},
    {"name": "Harshadeepa M.n", "phone": "+1 987 654 321", "email": "Harshadeepa@example.com"},
    {"name": "Sujhita", "phone": "+1 555 111 222", "email": "Sujhita@example.com"},
    {"name": "Sonika singh tomar ", "phone": "+1 666 777 888", "email": "Sonika@example.com"},
  ];

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
        child: Column(
          children: [
            /// Contacts covering the whole width but in a column
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ],
              ),
            ),

            /// Back Button
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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

/// Contact Card for each person
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
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 40, color: Colors.deepOrangeAccent),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(phone, style: const TextStyle(fontSize: 14, color: Colors.white70)),
            const SizedBox(height: 4),
            Text(email, style: const TextStyle(fontSize: 13, color: Colors.white60), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
