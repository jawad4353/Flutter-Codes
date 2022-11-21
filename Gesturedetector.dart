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

         GestureDetector(
             onTap: (){print('ontap');},
             onTapUp: (a){print("${a.localPosition} OntapUp");},
             onTapDown: (a){print("${a.localPosition} TapDown");},
             onDoubleTap: (){print('DoubleTap');},
             onLongPress: (){print(" LongPress");},
             
             //
             // onVerticalDragUpdate: (a){print("${a.localPosition} vertical Update");} ,
             // onVerticalDragStart: (a){print("${a.localPosition} Veritical start");},
             // onVerticalDragUpdate: (a){print("${a.localPosition} Horizontal start");},
             
             // onHorizontalDragStart: (a){print("${a.localPosition} Horizontal start");},
             // onHorizontalDragEnd: (a){print("${a.primaryVelocity} HorizontalEnd");},
             // onHorizontalDragUpdate:(a){print("${a.localPosition} Horizontal Update");} ,

             child: Padding(padding:  EdgeInsets.all(40), child: Container( height: 200,),)),

        ],),
      ),
    );
  }
}