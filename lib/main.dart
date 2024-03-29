import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:empower_ability/screens/main_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
