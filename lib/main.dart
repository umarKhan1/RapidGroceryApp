import 'package:flutter/material.dart';
import 'package:rapidgorcery/utils/app_strings.dart';
import 'package:rapidgorcery/utils/utils_imports.dart';

import 'bottom_navigation.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.app____Main_____Name,
     theme: MyTheme.lightThemeData,
      home: const BottomScreen(),
    );
  }
}

