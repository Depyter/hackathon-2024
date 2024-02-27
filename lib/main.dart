// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'data_service.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    final TextEditingController answerFieldController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
                TextField(
                  controller: answerFieldController,
                  decoration: InputDecoration(
                    labelText: 'Answer',
                  ),
                ),
              ElevatedButton(
                onPressed: () {
                  addanswer(answerFieldController.text);
                }, 
                child: Text('Press me'),
                ),  
            ],
          ),
        ),
      ),
    );
  }
}

