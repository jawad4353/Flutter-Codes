import 'package:flutter/material.dart';

void main()  {
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget {
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(title: Text('Divider Widget',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.deepPurple,),
          body:ListView(
            children: [
              IntrinsicHeight(
                child: Container(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Ashu ',style: TextStyle(fontSize: 26,)),
                      VerticalDivider(
                        color: Colors.lightGreenAccent,
                        thickness: 15,

                      ),
                      Text('Farhan',style: TextStyle(fontSize: 26,)),],),
                ),
              ),


              Container(height: 100,color: Colors.yellow,),
              Divider(height: 50,color: Colors.blue,thickness: 6,),
              Container(height: 100,color: Colors.yellow,),
            ],
          )
      ),);
  }
}



