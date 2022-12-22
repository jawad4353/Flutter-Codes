import 'package:flutter/material.dart';

void main() {
  runApp(
 MaterialApp(
   home:First(),
 )
);}



class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  Future<bool> onClick()async{
    return (await showDialog(context: context, builder:(context)=>AlertDialog(
      title: Text('Are you sure?'),
      content:  Text('Do you want to exit an App'),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text('Yes'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent.shade700),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(false),
          child:  Text('No'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent.shade700),
        ),
      ],
    ))) ?? true;
  }
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: onClick,
      child: Scaffold(
                  appBar:  AppBar(centerTitle: true,backgroundColor: Colors.lightGreenAccent.shade700,
                    title: Text("WillPopScope", style:  TextStyle(color: Colors.white),
                    ),),
      ),
    );
  }
}











