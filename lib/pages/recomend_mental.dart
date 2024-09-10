// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hyperlink/hyperlink.dart';
import 'package:url_launcher/link.dart';

class RecomendMental extends StatelessWidget {
  const RecomendMental({super.key});

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
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Color.fromARGB(255, 5, 50, 80),
                        padding: EdgeInsets.symmetric(vertical: 80),
                        child: Center(
                          child: Text(
                            "You are doing good,can do better.",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 80),
                        child: Center(
                          child: Text(
                            "Travel more to explore!!.",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Colors.purple,
                        padding: EdgeInsets.symmetric(vertical: 80),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              'https://youtu.be/O9qRyFOLdQk?si=uLEd2ezBc6yAgqo1'),
                          builder: (context, followLink) {
                            return TextButton(
                              onPressed: followLink,
                              child: Center(
                                child: Text(
                                  "Click here to watch the video[Youtube]",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 80),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              'https://youtu.be/2NZDp0E-HFc?si=wBblexoAdU6ycl5V'),
                          builder: (context, followLink) {
                            return TextButton(
                              onPressed: followLink,
                              child: Center(
                                child: Text(
                                  "Click here to watch the video[Youtube]",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                ),
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
