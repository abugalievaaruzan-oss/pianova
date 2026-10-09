
import 'package:flutter/material.dart';

class LessonDetailScreen extends StatefulWidget {
  final String title;
  final String description;
  final String price;
  final String imagePath;

  const LessonDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  @override
  State<LessonDetailScreen> createState() =>
      _LessonDetailScreenState();
}

class _LessonDetailScreenState
    extends State<LessonDetailScreen> {
  String selectedTime = '12:00';
  bool isBooked = false;

  final List<String> times = [
    '10:00',
    '12:00',
    '15:00',
    '18:00',
  ];

  @override
  Widget build(BuildContext context) {
    const burgundy = Color(0xFF800020);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Lesson Details'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    widget.imagePath,
                    width: double.infinity,
                    height: 240,
                    fit: BoxFit.contain,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Chip(
                      label: Text('In-person'),
                      backgroundColor: Colors.white,
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.person, color: burgundy),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Professional Piano Teacher',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Icon(Icons.access_time, color: burgundy),
                SizedBox(width: 10),
                Text(
                  '60 minutes',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              widget.price,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Select Lesson Time',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: times.map((time) {
                return ChoiceChip(
                  label: Text(time),
                  selected: selectedTime == time,
                  showCheckmark: false,
                  selectedColor: burgundy,
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: burgundy),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  onSelected: (_) {
                    setState(() {
                      selectedTime = time;
                      isBooked = false;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 35),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isBooked = true;
                  });

                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    SnackBar(
                      content: Text(
                        'Your lesson is booked for $selectedTime!',
                      ),
                      backgroundColor: burgundy,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: burgundy,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'Book Lesson',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            if (isBooked) ...[
              const SizedBox(height: 22),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: burgundy,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Booking Confirmed!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Your lesson is booked for $selectedTime.',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
