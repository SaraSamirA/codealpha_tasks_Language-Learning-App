
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class LanguageSelectionPage extends StatelessWidget {
  final Map<String, IconData> languageIcons = {
    'English': Icons.language,
    'Spanish': Icons.language,
    'French': Icons.language,
    'German': Icons.language,
    'Chinese': Icons.language,
    'Japanese': Icons.language,
    // Add more languages and corresponding icons as needed
  };

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Choose a Language',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: ListView.builder(
          itemCount: languageIcons.length,
          itemBuilder: (context, index) {
            final language = languageIcons.keys.elementAt(index);
            final icon = languageIcons.values.elementAt(index);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the next page or perform an action when a language is selected
                  // For example:
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => HomeScreen()),
                   );
                },
                child: Card(
                  color: Color(0xff1b2e35),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          icon,
                          size: 30.0,
                          color: Colors.white70,
                        ),
                        Text(
                          language,
                          style: TextStyle(fontSize: 18.0,color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20.0,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}