import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: First(),
      ));
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(backgroundColor: Colors.lightGreenAccent.shade700, centerTitle:true,
         title: Text('Send Email EmailJS', style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),),

       body: Center(
          child: ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent.shade700),
          onPressed: (){
                  Send_mail();
              }, icon: Icon(Icons.mail), label: Text('Send',
                style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),))

      ),
     ),);
  }


  void Send_mail(){
    var
    Service_id='',
        Template_id='',
        User_id='';
    var s=http.post(Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
        headers: {
          'origin':'http:localhost',
           'Content-Type':'application/json'
},
      body: jsonEncode({
        'service_id':Service_id,
        'user_id':User_id,
        'template_id':Template_id,
        'template_params':{
          'name':'jawad',
          'message':'This is just test email',
          'sender_email':'ja883526@gmail.com'
        }
      })

    );
  }
}


