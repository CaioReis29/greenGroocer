import 'package:flutter/material.dart';
import 'package:greengrocer/src/screens/splash/splash_screen.dart';
import 'package:greengrocer/src/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Greengroocer",
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const SplashScreen(),
    );
  }
}
