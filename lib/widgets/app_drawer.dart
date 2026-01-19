// lib/widgets/app_drawer.dart

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String userRole;

  const AppDrawer({super.key, required this.userRole});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              "MedLab Inventory",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (userRole == 'Admin') ...[
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: const Icon(Icons.science),
              title: const Text("Manage Instruments"),
              onTap: () {
                Navigator.pushNamed(context, '/manage_instruments');
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text("Manage Requests"),
              onTap: () {
                Navigator.pushNamed(context, '/manage_requests');
              },
            ),
          ],
          if (userRole == 'Staff') ...[
            ListTile(
              leading: const Icon(Icons.inventory),
              title: const Text("Monitor Inventory"),
              onTap: () {
                Navigator.pushNamed(context, '/monitor_inventory');
              },
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text("Log Maintenance"),
              onTap: () {
                Navigator.pushNamed(context, '/log_maintenance');
              },
            ),
            ListTile(
              leading: const Icon(Icons.check),
              title: const Text("Approve Requests"),
              onTap: () {
                Navigator.pushNamed(context, '/manage_requests');
              },
            ),
          ],
          if (userRole == 'Student') ...[
            ListTile(
              leading: const Icon(Icons.request_page),
              title: const Text("My Requests"),
              onTap: () {
                Navigator.pushNamed(context, '/my_requests');
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text("Request Instrument"),
              onTap: () {
                Navigator.pushNamed(context, '/request_instrument');
              },
            ),
          ],
        ],
      ),
    );
  }
}
