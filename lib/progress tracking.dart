import 'package:flutter/material.dart';

class ProgressTrackingPage extends StatelessWidget {
  final int totalLessons;
  final int completedLessons;
  final int totalQuizzes;
  final int correctQuizzes;

  ProgressTrackingPage({
    required this.totalLessons,
    required this.completedLessons,
    required this.totalQuizzes,
    required this.correctQuizzes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Tracking',style: TextStyle(
        fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lessons Progress:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '$completedLessons out of $totalLessons completed',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Quizzes Progress:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '$correctQuizzes out of $totalQuizzes correct',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
