import 'package:flutter/material.dart';
import 'package:language/progress%20tracking.dart';
import 'package:language/quizes.dart';
import 'package:language/splash.dart';

import 'english-lessons.dart';
import 'language-selection.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          mainAxisSpacing: 18.0,
          crossAxisSpacing: 18.0,
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/start.jpg',width: 150, height: 100),
                    SizedBox(height: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1b2e35)), // Change the color here
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EnglishLessonsPage()),
                        );
                      },
                      child: Text('Start Lessons',textAlign:TextAlign.center,style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],

              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/quiz.jpg', width: 190, height: 100),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1b2e35)), // Change the color here
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EnglishQuizPage()),
                        );
                      },
                      child: Text('Take Quizzes',textAlign:TextAlign.center,style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/progress.jpg', width: 150, height: 100),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1b2e35)), // Change the color here
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProgressTrackingPage(
                              totalLessons: 10, // Replace with actual total lessons count
                              completedLessons: 5, // Replace with actual completed lessons count
                              totalQuizzes: 8, // Replace with actual total quizzes count
                              correctQuizzes: 6, // Replace with actual correct quizzes count
                            ),
                          ),
                        );
                      },
                      child: Text('View Progress',textAlign:TextAlign.center,style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],            ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/community.jpg', width: 150, height: 100),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1b2e35)), // Change the color here
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CommunityScreen()),
                        );
                      },
                      child: Text('Community Forum',textAlign:TextAlign.center,style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CommunityScreen extends StatelessWidget {
  final List<String> forumPosts = [
    'How do you memorize vocabulary effectively?',
    'Tips for improving speaking skills?',
    'Favorite language learning apps?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
      ),
      body: ListView.builder(
        itemCount: forumPosts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(forumPosts[index]),
            subtitle: Text('Posted by User123'),
            onTap: () {
              // View forum post logic goes here
            },
          );
        },
      ),
    );
  }
}
