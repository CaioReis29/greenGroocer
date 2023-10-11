import 'package:flutter/material.dart';
import 'package:greengrocer/src/screens/auth/sign_in_screen.dart';
import 'package:greengrocer/src/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const SignInScreen(),
    );
  }
}
