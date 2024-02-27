// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text("Demo app tutorial"),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            title: Text(index.toString()),
          ),
        )
      ),
    );
  }
}

