import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_options.dart';
// ...

void main() => runApp((MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello world"),
        ),
        body: Column(
          children: [
            Text("Hyderabad"),
            TextButton(
              child: Text("Add to database"),
              onPressed: () async {
                await Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                );
                FirebaseFirestore.instance
                    .collection('locations')
                    .add({"location_name": "Chennai0"});
              },
            ),
            TextButton(
              child: Text("Remove from database"),
              onPressed: () async {
                await Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                );
                FirebaseFirestore.instance
                    .collection('centers')
                    .add({"centers": "Chennai0,anna nagar"});
              },
            )
          ],
        ),
      ),
    );
  }
}
