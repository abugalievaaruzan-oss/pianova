
import 'package:flutter/material.dart';
import '../widgets/lesson_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'PIANOVA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  'assets/images/piano_banner.jpeg',
                  width: double.infinity,
                  height: 240,
                  fit: BoxFit.contain,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.black,
                  child: const Text(
                    'THE ART OF PIANO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Discover Your Musical Talent',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'In-person piano lessons for every level.',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          const Text(
            'Our Piano Courses',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const LessonCard(
            title: 'Beginner Piano',
            description: 'Start your piano journey from zero.',
            price: '8 000 KZT',
            imagePath: 'assets/images/beginner_piano.jpeg',
          ),
          const LessonCard(
            title: 'Classical Piano',
            description: 'Learn beautiful classical compositions.',
            price: '10 000 KZT',
            imagePath: 'assets/images/classical_piano.jpeg',
          ),
          const LessonCard(
            title: 'Private Piano Lessons',
            description: 'Personal lessons with a piano teacher.',
            price: '12 000 KZT',
            imagePath: 'assets/images/private_piano.jpeg',
          ),
        ],
      ),
    );
  }
}
