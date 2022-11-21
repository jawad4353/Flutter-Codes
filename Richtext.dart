import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(title: Text('RichText '),centerTitle: true,backgroundColor: Colors.pink,),
       body:ListView(
         children: [
           RichText(
             textScaleFactor: 1,
             text: TextSpan(
               text: 'Do you have an \n account?',
               style: TextStyle(color: Colors.black,fontSize: 23),
               recognizer: TapGestureRecognizer()..onTap=(){
                 print('i am recognizer');
               }
               ,
               children: [
                TextSpan(
                  text: 'Yes ',
                  style: TextStyle(color: Colors.red,fontSize: 23),
                  recognizer: TapGestureRecognizer()..onTap=(){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>second()));
                  }
                  ,
                ),
                 TextSpan(
                   text: 'No ',
                   style: TextStyle(color: Colors.green,fontSize: 23),
                   recognizer: TapGestureRecognizer()..onTap=(){
                   launchUrl(Uri.https('youtube.com'));
                   }
                   ,
                 ),

               ]
             ),
           )
         ],
       )),);
  }
}





class second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
    );
  }

}