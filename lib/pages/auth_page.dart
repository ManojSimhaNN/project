import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:companion_app/pages/login_or_register_page.dart';
import 'package:companion_app/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user loggedin
          if (snapshot.hasData) {
            return const HomePage();
          }
          //user not loggedin
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
