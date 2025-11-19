import 'package:flutter/material.dart';
import 'package:your_zodiac_app/features/presentation/screens/home_screens.dart';

class YourZodiacSignApp extends StatelessWidget {
  const YourZodiacSignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreens());
  }
}
