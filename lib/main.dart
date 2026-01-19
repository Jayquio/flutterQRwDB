import 'package:flutter/material.dart';
import 'screens/common/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/staff/manage_requests_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedLab Inventory',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/manage_requests': (context) => const ManageRequestsScreen(),
      },
    );
  }
}
