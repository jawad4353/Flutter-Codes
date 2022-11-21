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
      appBar: AppBar(title:Text('Interactive Viewer'),centerTitle: true,backgroundColor: Colors.transparent,),
        body: InteractiveViewer(
             minScale: 1,
            maxScale:5 ,
            panEnabled: true,
            clipBehavior: Clip.none,
            scaleEnabled: true,
            boundaryMargin: EdgeInsets.only(left: 50),
            onInteractionUpdate:  (a){print('Zoom up ${a.focalPoint}');},

            child: Image.asset('images/c.jpg',)),
  );
  }
}