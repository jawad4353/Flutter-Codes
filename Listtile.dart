import 'package:flutter/material.dart';
import 'jd_icons.dart';
void main(){
  runApp(
    MaterialApp(
      home: home(),
    )
  );
}
var select=false;
class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("My icons")
       ,
     actions: [
       Icon(Jd.ffc,size: 40,)
     ],),
body: ListView(
  children: [
    ListTile(
    title: Text("Jawad Aslam",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      subtitle: Text("I am subtitle\n i an new "),
      selected: select,
      leading: Icon(Icons.supervised_user_circle),
      trailing: Icon(Icons.home),
      selectedTileColor:Colors.pink ,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.deepOrange,
          width: 4
        )
      ),
      onTap: (){
      setState(() {
        select=!select;
      });
      },
      onLongPress: (){},

    ),

    ListTile(
      title: Text("Jawad Aslam",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      subtitle: Text("I am subtitle"),
      leading: Icon(Icons.supervised_user_circle),
      trailing: Icon(Icons.home),
      selectedTileColor:Colors.pink ,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
              color: Colors.deepOrange,
              width: 4
          )
      ),
      onTap: (){},
      onLongPress: (){},

    ),
    ListTile(
      title: Text("Jawad Aslam",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      subtitle: Text("I am subtitle"),
      leading: Icon(Icons.supervised_user_circle),
      trailing: Icon(Icons.home),
      selectedTileColor:Colors.pink ,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
              color: Colors.deepOrange,
              width: 4
          )
      ),
      onTap: (){},
      onLongPress: (){},

    )
  ],
),
   );
  }
}