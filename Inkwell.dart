import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:first() ,
  ));
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor:Colors.pink,centerTitle:true,title:Text('ListView Builder',),),
       body: ListView(
        children: [
        InkWell(
          onTap: (){print('ontap');},
          onTapDown: (a){print('${a.globalPosition} OnTapDown');},
          onTapUp:  (a){print('${a.globalPosition} ontapUp');},
          onLongPress:  (){print(' LongPress');},
          onDoubleTap:   (){print(' Doubletap');},
         borderRadius: BorderRadius.circular(30),
          splashColor: Colors.pink,
          child: Padding(
                  padding: EdgeInsets.only(top: 40,right: 90,left: 90),
                  child: Container(
                    height: 100,
                    width: 100,

                  ),),
        ),
        ],
       ),
      ),
    );
  }}