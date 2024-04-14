import 'package:flutter/material.dart';
import 'package:companion_app/pages/login_page.dart';
import 'package:companion_app/pages/register_page.dart';

class LoginOnRegisterPage extends StatefulWidget {
  const LoginOnRegisterPage({super.key});

  @override
  State<LoginOnRegisterPage> createState() => _LoginOnRegisterPageState();
}

class _LoginOnRegisterPageState extends State<LoginOnRegisterPage> {
  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onPressed: togglePages,
      );
    } else {
      return RegisterPage(
        onPressed: togglePages,
      );
    }
  }
}
