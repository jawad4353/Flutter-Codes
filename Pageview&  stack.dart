import"package:flutter/material.dart";

void main(){

  runApp(MaterialApp(
    home: you(),
  ));
}

class you extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Stack(
  children: [
    Container(
      color: Colors.red,

    ),
    Positioned(
     top: 200,
    right: 0,

      child: Container(
        color: Colors.blueAccent,
        height: 300,
        width: 200,
      ),
    ),
    Positioned(
     bottom: 0,
      right: 0,
      child: Container(
        color: Colors.lightGreenAccent,
        height: 200,
        width: 100,
      ),
    ),
  ],
)
    );
  }
}


//
// PageView(
//
// children: [
//
// ListView(
// children:[
// Container(
// padding: EdgeInsets.only(top: 300),
// color:Colors.lightGreenAccent,
// child: Center(child: Text("I am second"))),
// Container(
// padding: EdgeInsets.only(top: 300),
// color:Colors.lightGreenAccent,
// child: Center(child: Text("I am second"))),
// Container(
// padding: EdgeInsets.only(top: 300),
// color:Colors.lightGreenAccent,
// child: Center(child: Text("I am second"))),
// ],
// ),
// Container(
// color:Colors.blueAccent,
// child: Center(child: Text("I am 3rd"))),
// ],
// ),