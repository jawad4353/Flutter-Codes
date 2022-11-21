import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
   home: first(),
  ));
 }

class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
    children: [

      Expanded(
        flex: 1,
          child: Container(height: 200,color: Colors.yellow,)),
      Expanded(
        flex: 2,
          child: Container(height:200,color: Colors.pink,)),
      Expanded(
          flex: 3,
          child: Container(height:200,color: Colors.green,)),
    ],
    ),
    ));
  }
}