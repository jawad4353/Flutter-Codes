import 'package:flutter/material.dart';

void main()  {
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title:Text('Progress Indicators'),centerTitle: true, backgroundColor: Colors.orange,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              TweenAnimationBuilder(tween: Tween(begin: 0.1,end: 1.0),
                duration: Duration(seconds: 3),
                builder: (context,val,o)=>Stack(children: [
                  Container(
                    height: 200,
                    width: 200,
                    child:  CircularProgressIndicator(
                      strokeWidth: 30,
                      color: Colors.orange,
                      backgroundColor: Colors.white,
                      value: val,
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 80,
                      child: Text('${(val*100).floorToDouble()}',
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.pink),)),
                ],),),
             TweenAnimationBuilder(tween: Tween(begin: 0.1,end: 1.0),
                 duration: Duration(seconds: 3),
                 builder:(context,val,ob)=> Stack(children: [
                   Container(
                     width: 300,
                     child:  LinearProgressIndicator(
                       minHeight:30 ,
                       color: Colors.orange,
                       backgroundColor: Colors.white,
                       value: val,
                     ),
                   ),
                   Positioned(
                       left: 80,
                       child: Text('${(val*100).floorToDouble()}',
                         style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.pink),)),
                 ],))
          ],),
        )
    );
  }
}






































