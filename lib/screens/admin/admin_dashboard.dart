// lib/screens/admin/admin_dashboard.dart

import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Manage Instruments and Requests",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Manage Instruments button
            ElevatedButton(
              onPressed: () {
                // Navigate to manage instruments screen
              },
              child: const Text("Manage Instruments"),
            ),
            const SizedBox(height: 10),
            // Manage Requests button
            ElevatedButton(
              onPressed: () {
                // Navigate to manage requests screen
              },
              child: const Text("Manage Requests"),
            ),
          ],
        ),
      ),
    );
  }
}
