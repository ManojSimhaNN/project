import 'package:flutter/material.dart';

class Therapist extends StatefulWidget {
  const Therapist({super.key});

  @override
  State<Therapist> createState() => _TherapistState();
}

class _TherapistState extends State<Therapist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 50, 80),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 305,
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Name:Dr.Avinash\nSpecialization:Orthopediatrition\nPhone no:123456789\nLocation:Bengaluru",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 380,
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Name:Dr.Shetal\nSpecialization:Psycologist\nPhone no:123456789\nLocation:Tumakuru",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 380,
                        top: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Name:Dr.Bhaskar\nSpecialization:Psycologist\nPhone no:123456789\nLocation:Mangaluru",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    color: Colors.blue,
                    padding: const EdgeInsets.only(
                      right: 295,
                      top: 10,
                      left: 10,
                    ),
                    child: Text(
                      "Name:Dr.Ramya\nSpecialization:General Physician\nPhone no:123456789\nLocation:Mangaluru",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
