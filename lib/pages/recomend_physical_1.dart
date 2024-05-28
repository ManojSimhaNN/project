// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/link.dart';

class RecomendPhysical1 extends StatelessWidget {
  const RecomendPhysical1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 50, 80),
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        color: Color.fromARGB(255, 5, 50, 80),
                        padding:
                            EdgeInsets.symmetric(horizontal: 108, vertical: 80),
                        child: Text(
                          "Do Physical Activity for atleast 2 Hours.",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.orange,
                        padding:
                            EdgeInsets.symmetric(horizontal: 190, vertical: 80),
                        child: Text(
                          "Sleep for atleast 7-8 Hours.",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 107, vertical: 80),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              'https://youtu.be/XreA78in4oc?si=lYu0NCE5gQSc8fsT'),
                          builder: (context, followLink) {
                            return TextButton(
                              onPressed: followLink,
                              child: Text(
                                "Click here to watch the video[Youtube]",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 107, vertical: 80),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              'https://youtu.be/PcGdz8JCi5I?si=SeYdZjP03_l5bmE_'),
                          builder: (context, followLink) {
                            return TextButton(
                              onPressed: followLink,
                              child: Text(
                                "Click here to watch the video[Youtube]",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
