import 'package:cloud_firestore/cloud_firestore.dart';


final FirebaseFirestore firestore = FirebaseFirestore.instance;
final CollectionReference users = firestore.collection('users');

Future<void> addanswer(String answer) {
  // Call the user's CollectionReference to add a new user
  return users
    .add({
      'answer': answer, // John Doe
    })
    .then((value) => print("Answer Added"))
    .catchError((error) => print("Failed to add answer: $error"));
}