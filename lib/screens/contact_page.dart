import 'package:flutter/material.dart';

/// Contact details page with four contacts in a row
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
            /// Contacts in a Grid (4 in a row)
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 items per row
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.75, // Maintain square ratio
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
      child: Padding(
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
