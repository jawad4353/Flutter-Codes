import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(
      MaterialApp(home: Splash(),
      )
  );
}

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState(){
    super.initState();
    Get_Data();
   Myroute();
  }

  Myroute() async {
    final prefs = await SharedPreferences.getInstance();
    var email= prefs.getString('email');
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context)=>email==null ? Login():Home())));
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(child: Icon(Icons.https,color: Colors.white,size: 80,),),
    );
  }
}


class Login extends StatelessWidget {
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          TextField(controller: email,decoration: InputDecoration(hintText: "Email"),),
          TextField(controller: password,decoration: InputDecoration(hintText: "Password"),),
          ElevatedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.purpleAccent),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString('email', '${email.text}');
              await prefs.setString('password', '${password.text}');
            }, child: Text('Login'),)
        ],
      ),
    );
  }


}

Get_Data() async {
  final prefs = await SharedPreferences.getInstance();

  final List<String>? items = prefs.getStringList('items');
  print(prefs.getInt('counter'));
  print(prefs.getBool('repeat'));
  print(prefs.getDouble('decimal'));
  print(prefs.getString('email'));
  print(items);
  prefs.remove('counter');



}


Future<void> Set_Data() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('counter', 106767867);
  await prefs.setBool('repeat', true);
  await prefs.setDouble('decimal', 1.5);
  await prefs.setString('email', 'abc');
  await prefs.setString('password', 'pass123');
  await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun','Mars']);
}

























class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Home'),centerTitle: true,
        backgroundColor: Colors.purpleAccent,),
      drawer: Drawer(),
      body:ElevatedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.purpleAccent),
        onPressed: () async {

        }, child: Text('Logout'),),
    );
  }
}