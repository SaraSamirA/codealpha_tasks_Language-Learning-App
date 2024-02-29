import 'package:flutter/material.dart';
import 'dart:math';


class EnglishQuizPage extends StatefulWidget {
  @override
  _EnglishQuizPageState createState() => _EnglishQuizPageState();
}

class _EnglishQuizPageState extends State<EnglishQuizPage> {
  List<String> questions = [
    'What is the plural form of "cat"?',
    'Which word is a synonym for "happy"?',
    'What is the opposite of "hot"?',
    'How do you spell "apple"?',
    'What is the past tense of "run"?',
    'Which planet is known as the Red Planet?',
    'Who wrote "Romeo and Juliet"?',
    'What is the chemical symbol for water?',
    'What is the capital city of France?',
    'Which country is known as the Land of the Rising Sun?',
  ];

  List<List<String>> options = [
    ['Cats', 'Cates', 'Caties', 'Catses'],
    ['Sad', 'Excited', 'Angry', 'Hungry'],
    ['Cold', 'Warm', 'Spicy', 'Wet'],
    ['Aplle', 'Appel', 'Appl', 'Apple'],
    ['Ran', 'Runed', 'Runned', 'Running'],
    ['Mars', 'Jupiter', 'Saturn', 'Neptune'],
    ['William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain'],
    ['H2O', 'CO2', 'NaCl', 'O2'],
    ['Paris', 'Rome', 'London', 'Berlin'],
    ['China', 'Japan', 'South Korea', 'Vietnam'],
  ];

  List<int> answers = [0, 0, 0, 3, 0, 0, 0, 0, 0, 1];

  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  void checkAnswer(int selectedOptionIndex) {
    if (selectedOptionIndex == answers[currentQuestionIndex]) {
      setState(() {
        correctAnswers++;
      });
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      showResultDialog();
    }
  }

  void showResultDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Quiz Result'),
        content: Text('You scored $correctAnswers out of ${questions.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Quiz',style: TextStyle(
        fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1} / ${questions.length}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              questions[currentQuestionIndex],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 32.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: options[currentQuestionIndex].map((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1b2e35)), // Change the color here
                    ),
                    onPressed: () {
                      checkAnswer(options[currentQuestionIndex].indexOf(option));
                    },
                    child: Text(option,style: TextStyle(color: Colors.white),),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
