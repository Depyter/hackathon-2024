import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> addUserData(Map<String, dynamic> data) async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  CollectionReference ref = FirebaseFirestore.instance.collection('user');
  try {
    DocumentReference docRef = await ref.add(data);
    print('Document written with ID: ${docRef.id}');
  } catch (e) {
    print('Error adding document: $e');
  }
  }

