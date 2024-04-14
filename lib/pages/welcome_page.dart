// ignore_for_file: unused_import

import 'package:companion_app/components/my_button.dart';
import 'package:companion_app/pages/login_page.dart';
import 'package:companion_app/pages/quiz_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Companion App"),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      onPressed: () {},
                    ),
                  ),
                );
              },
              icon: Icon(Icons.logout))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      body: Column(
        children: [
          // first box

          Expanded(
            child: Container(
              child: Icon(
                Icons.emoji_emotions,
                size: 100,
                color: Colors.white,
              ),
              color: Color.fromARGB(255, 5, 50, 80),
            ),
          ),

          //second box

          Expanded(
            child: Container(
              child: const Center(
                child: Text(
                  "Mental Health Assesment",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              padding: EdgeInsets.all(4.0),
              color: Color.fromARGB(255, 5, 50, 80),
            ),
          ),

          //second box
          Expanded(
            child: Container(
              child: const Center(
                child: Text(
                  "Let's quickly take personal health questionnaire before we get atarted!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              padding: EdgeInsets.all(4.0),
              color: Color.fromARGB(255, 5, 50, 80),
            ),
          ),

          //third box

//"Let's quickly take personal health questionnaire before we get atarted!"

          Expanded(
            child: Container(
              color: Color.fromARGB(255, 5, 50, 80),
              alignment: Alignment.center,
              child: ElevatedButton(
                child: Text("Start Quiz"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber,
                  fixedSize: Size(
                    150,
                    50,
                  ),
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
