// import 'package:flutter/material.dart';
//  import               'screens/getting started.dart';
//  import               'screens/documentation.dart';
// import             'screens/contact_details.dart';
// import          'screens/features.dart';
//  import 'screens/supported_devices.dart';
// import   'screens/technology.dart';
                
               

// class Footer extends StatelessWidget {
//   const Footer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//       decoration: const BoxDecoration(
//         color: Colors.black,
//         border: Border(
//           top: BorderSide(color: Colors.redAccent, width: 2), // Stylish top border
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _footerColumn(Icons.book, "Resources", [
//                 "Getting Started",
//                 "Documentation",
//                 "Contact Us",
//               ]),
//               _footerColumn(Icons.devices, "Platform", [
//                 "Features",
//                 "Supported Devices",
//                 "Technology",
               
//               ]),
            
//             ],
//           ),
//           const SizedBox(height: 20),
//           const Divider(
//             color: Colors.white38,
//             thickness: 1.2,
//             indent: 30,
//             endIndent: 30,
//           ),
//           const SizedBox(height: 10),
//           const Center(
//             child: Text(
//               "© 2025 Your Company. All rights reserved.",
//               style: TextStyle(color: Colors.white60, fontSize: 14),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _footerColumn(IconData icon, String title, List<String> items) {
//     return Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: Colors.redAccent, size: 20),
//               const SizedBox(width: 6),
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           ...items.map(
//             (item) => Padding(
//               padding: const EdgeInsets.symmetric(vertical: 3),
//               child: Text(
//                 item,
//                 style: const TextStyle(color: Colors.white70, fontSize: 14),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
