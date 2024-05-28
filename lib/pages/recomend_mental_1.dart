// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hyperlink/hyperlink.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class RecomendMental1 extends StatelessWidget {
  const RecomendMental1({super.key});

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
                        padding:
                            EdgeInsets.symmetric(horizontal: 152, vertical: 80),
                        height: 200,
                        color: Color.fromARGB(255, 5, 50, 80),
                        child: Text(
                          "Do Meditation for atleast 1 Hour.",
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
                            EdgeInsets.symmetric(horizontal: 185, vertical: 80),
                        child: Text(
                          "Socialize more with friends.",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
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
                              'https://youtu.be/tBGvOmUhhq4?si=xt7P2wIULzXMq9jH'),
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
                              'https://youtu.be/ga-MniJxQz8?si=KlvZdIM7aQUzb1bV'),
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
