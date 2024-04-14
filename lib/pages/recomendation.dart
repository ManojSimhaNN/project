import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Recomend extends StatelessWidget {
  const Recomend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 5, 50, 80),
      appBar: AppBar(
        title: Center(
          child: Text("Companion App"),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),

      body: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(8.0)),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 5, 50, 80),
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  color: Colors.deepOrange,
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          
          ],
        ),
      );
    
  }
}
