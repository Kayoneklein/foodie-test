import 'package:flutter/material.dart';
import 'package:foodie/constants/config.dart';
import 'package:foodie/views/admin/dashboard/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.appName,
      theme: ThemeData(
        cardTheme: const CardTheme(
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        buttonTheme: const ButtonThemeData(),
      ),
      home: DashboardScreen(),
    );
  }
}
