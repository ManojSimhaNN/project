// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:companion_app/pages/login_on_register_page.dart';
import 'package:companion_app/pages/login_page.dart';
import 'package:companion_app/pages/home_page.dart';
import 'package:companion_app/pages/register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user loggedin
          if (snapshot.hasData) {
            return HomePage();
          }
          //user not loggedin
          else {
            return LoginOnRegisterPage();
          }
        },
      ),
    );
  }
}
