// ignore_for_file: unused_import

import 'package:companion_app/components/my_button.dart';
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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          // first box
          Expanded(
            child: Container(
              color: Colors.deepPurple[400],
            ),
          ),

          //second box

          Expanded(
            child: Container(
              color: Colors.deepPurple[300],
            ),
          ),
          //third box

          Expanded(
            child: Container(
              color: Colors.deepPurple[200],
            ),
          ),

          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            },
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
