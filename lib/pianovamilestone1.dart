
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PianovaApp());
}

class PianovaApp extends StatelessWidget {
  const PianovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pianova Music School',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF800020),
          surface: Colors.black,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
