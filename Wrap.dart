import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
   home: first(),
  ));
 }

class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Wrap(

                runSpacing: 15.0,
                
                children: [
                  Container (height: 100, width: 100, color: Colors.green,),
                  Container (height: 100, width: 100, color: Colors.indigo,),
                  Container (height: 100, width: 100, color: Colors.yellowAccent,),
                  Container (height: 100, width: 100, color: Colors.blueAccent,),
                  Container (height: 100, width: 100, color: Colors.blueAccent,),
                ],),
        ),),
    );
  }
}