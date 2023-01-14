
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MaterialApp(
          home: First())
  );
}


class First extends StatelessWidget {

Future<void> Load_data() async {
  await FirebaseFirestore.instance.collection("users").get().then((querySnapshot) {
    querySnapshot.docs.forEach((result) {
      print(result.data());
    });
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Synchronous vs Asynchronous'),centerTitle: true,backgroundColor: Colors.deepPurpleAccent,),
        body: ElevatedButton(onPressed:() {

         print('Starting');
         Load_data();
         print('Ending');

        },child: Text('Start'),),

    );
  }

}

// // importing dart:io file
// import 'dart:io';
//
// void main()
// {
//   print("Enter your name?");
//   // Reading name of the Geek
//   String? name = stdin.readLineSync();
//
//   // Printing the name
//   print("Hello, $name! \nWelcome to GeeksforGeeks!!");
// }



