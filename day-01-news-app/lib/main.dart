import 'package:bloc_example/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BaseApp());
}

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home:HomeScreen()
    );
  }
}
