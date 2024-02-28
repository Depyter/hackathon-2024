// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackathon_2024/user_question.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: UserInput(),
      ),
    );
  }
}
