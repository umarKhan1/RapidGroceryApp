import 'package:flutter/material.dart';
import 'package:rapidgorcery/splash_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashViews(),
    );
  }
}

