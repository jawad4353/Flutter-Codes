import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/a.dart';
import 'package:path_provider/path_provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget{
 late Database db;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Sqflite'),backgroundColor: Colors.pinkAccent,centerTitle: true,),
     body: Center(child: ElevatedButton(onPressed: () async {
       Sqflite_helper().init();
      db=await Sqflite_helper().Get_instance();

      FirebaseFirestore.instance.collection("tenses").get().then((querySnapshot) {
         querySnapshot.docs.forEach((result) async {
           await db.execute("INSERT INTO tenses (question,option1,option2,option3,answer) VALUES ('${result.data()['question']}','${result.data()['option1']}','${result.data()['option2']}','${result.data()['option3']}','${result.data()['answer']}')");
         });
       });
     },child: Text('Click'),)),
   );
  }
}







class Sqflite_helper{
  static const _databaseName = "Jawad.db";
  static const _databaseVersion = 1;
  var _db;

   init() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = "${documentsDirectory.path+_databaseName}";
    print(path);
    _db = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: create_tables,

    );
  }



  create_tables(Database db, int version) async {
    await db.execute("CREATE TABLE tenses ( question TEXT  , option1 TEXT ,option2 TEXT ,option3 TEXT ,answer TEXT)");
   }

  Get_instance() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = "${documentsDirectory.path+_databaseName}";
    var db = await openDatabase(
      path,
      version: _databaseVersion,
    );
    return db;
  }

  Insert() async {
   var db= Get_instance();
   await db.execute("INSERT INTO tenses (question,option1,option2,option3,answer) VALUES ('what is','a','b','c','d')");
  }



  Future<void> Truncate_table(table_name) async {
    var db= Get_instance();
    await db.rawQuery('DELETE FROM ${table_name} ');
  }



}


