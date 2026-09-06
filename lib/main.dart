import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MembershipApp());
}

class MembershipApp extends StatelessWidget {
  const MembershipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elite Club',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD1A958),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}