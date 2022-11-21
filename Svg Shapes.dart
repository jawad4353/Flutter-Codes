import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        appBar: AppBar(title: Text('SVG Shapes',style: TextStyle(fontSize: 34),),centerTitle:true ,),
        body: ListView(
          children: [
          Transform.rotate(
            angle: 0.5,
            child: SvgPicture.asset('images/triangle.svg',height: 400,width: 100,
            fit: BoxFit.fitHeight,
            color: Colors.purpleAccent,
              theme: SvgTheme(),
            ),
          )
          ],
        ),
      ),
    );
  }
  
}