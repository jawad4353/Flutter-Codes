import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}
class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(title: Text('Buttons'),centerTitle: true,backgroundColor: Colors.pink,),
       body:ListView(
         children: [
           ElevatedButton(style: ButtonStyle(
             backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.green),
             overlayColor: MaterialStateProperty.resolveWith((states) => Colors.cyanAccent),
             side: MaterialStateProperty.resolveWith((states) => BorderSide(color: Colors.pink,width: 5)),
             shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)
             )),

             padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.only(left: 50)),
             alignment: Alignment.center,
             foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
             textStyle: MaterialStateProperty.resolveWith((states) => TextStyle(fontSize: 32,color: Colors.black)),
           ),onPressed: (){}, child: Text('Elevated')),
           OutlinedButton(onPressed: (){}, child: Text('Outlined')),
           TextButton(onPressed: (){}, child: Text('Text')),

         ],
       ) ,
     ),
   );
  }

}