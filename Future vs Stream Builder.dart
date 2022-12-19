import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title:Text('Future & Stream Builder'),centerTitle: true, backgroundColor: Colors.orange,),
        body:StreamBuilder(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder:(context,Mydata){
            if(Mydata.hasData){
              var documents=Mydata.data!.docs;
              print(documents);
              return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('${documents[index]['name']}',style: TextStyle(fontSize: 23),),
                          Text('${documents[index]['email']}',style: TextStyle(fontSize: 23),),
                        ],));
            }
            return CircularProgressIndicator();
          },
        )
    );
  }
}




class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title:Text('Future & Stream Builder'),centerTitle: true, backgroundColor: Colors.orange,),
        body:FutureBuilder(
          future: FirebaseFirestore.instance.collection('users').get(),
          builder:(context,Mydata){
            if(Mydata.hasData){
              var documents=Mydata.data!.docs;
              print(documents);
              return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('${documents[index]['name']}',style: TextStyle(fontSize: 23),),
                          Text('${documents[index]['email']}',style: TextStyle(fontSize: 23),),
                        ],));
            }
            return CircularProgressIndicator();
          },
        )
    );
  }
}









