import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:companion_app/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:companion_app/pages/auth_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: AuthPage(),
    );
  }
}
