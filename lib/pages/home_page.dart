import 'package:companion_app/pages/contacts.dart';
import 'package:companion_app/pages/login_page.dart';
import 'package:companion_app/pages/mental.dart';
import 'package:companion_app/pages/physical.dart';
import 'package:companion_app/pages/todolist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      backgroundColor: Color.fromARGB(255, 5, 50, 80),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () {
                signUserOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      onTap: () {},
                    ),
                  ),
                );
              },
              icon: Icon(Icons.logout))
        ],
      ),
      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 0, 50, 80),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.account_circle,
                    size: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "To Do List",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ToDoList(),
                    ),
                  );
                },
              ),
              Divider(
                thickness: 1.0,
                color: Colors.white,
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "Therapist Contacts",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Contacts(),
                    ),
                  );
                },
              ),
              Divider(
                thickness: 1.0,
                color: Colors.white,
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "Chat Bot(Coming Soon)",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {},
              ),
              Divider(
                thickness: 1.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.emoji_emotions,
                  size: 100,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Health Assesment",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's quickly take personal health questionnaire!",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 0, 0, 0),
                shape: const StadiumBorder(),
                fixedSize: Size(700, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhysicalQuizPage(),
                  ),
                );
              },
              child: const Text(
                "Physical Activity Assesment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 0, 0, 0),
                shape: const StadiumBorder(),
                fixedSize: Size(700, 55),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MentalQuizPage(),
                  ),
                );
              },
              child: const Text(
                "Mental Health Assesment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
