// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text("Demo app tutorial"),
          backgroundColor: Colors.blueAccent,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
        ),
        body: ListView(
          children: [
            // 1st child
            Container(
              height: 300,
              width: 300,
              color: Colors.lightBlue,
            ),
            // 2nd child
            Container(
              height: 250,
              width: 250,
              color: Colors.blueAccent,
            ),
            //3rd child
            Container(
              height: 300,
              width: 300,
              color: Colors.lightBlue,
            ),
          ],)
      ),
    );
  }
}

