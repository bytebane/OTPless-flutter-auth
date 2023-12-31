import 'package:flutter/material.dart';
import 'package:otpless_auth/home_page.dart';
import 'package:otpless_auth/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme();
    return MaterialApp(
      title: 'OTPless Auth',
      theme: theme.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
