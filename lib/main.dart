import 'package:flutter/material.dart';
import 'package:task/view/screens/login-screen.dart';

void main() {
  runApp(const HelmetFacilityApp());
}
class HelmetFacilityApp extends StatelessWidget {
  const HelmetFacilityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

