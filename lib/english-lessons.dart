import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class EnglishLessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Lessons',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView(
          children: [
            LessonItem(
              title: 'Lesson 1: Introduction to English',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 2: Basic Grammar',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 3: Common Phrases',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 4: Vocabulary Building',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 5: Pronunciation Practice',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 6: Writing Skills',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 7: Reading Comprehension',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 8: Listening Skills',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            LessonItem(
              title: 'Lesson 9: Conversation Practice',
              videoId: 'YOUR_VIDEO_ID_HERE',
            ),
            // Add more lessons as needed
          ],
        ),
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  final String title;
  final String videoId;

  const LessonItem({
    Key? key,
    required this.title,
    required this.videoId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff1b2e35),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4.0,
      child: ListTile(
        title: Text(title,style: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.bold),),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonVideoPage(videoId: videoId),
            ),
          );
        },
      ),
    );
  }
}

class LessonVideoPage extends StatelessWidget {
  final String videoId;

  const LessonVideoPage({Key? key, required this.videoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Video'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
