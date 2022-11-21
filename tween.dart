import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return   SafeArea(
    child: Scaffold(
            body: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     TweenAnimationBuilder(
                       onEnd: (){print('Complete');},
                       curve: Curves.bounceInOut,
                       tween: Tween(begin:1.0 ,end: 0.1),
                       duration:Duration(seconds: 3) ,
                     builder: (BuildContext context,valuj,Mywidget)=>
                         Opacity(
                           opacity: valuj,
                             child: Icon(Icons.account_balance,color: Colors.deepOrange,size:190,))
                       ,),

                    Center(child: Text('Quizz',style: TextStyle(fontSize: 37,
                        fontWeight: FontWeight.bold, color: Colors.black87)),),
                   ],),
    ),
  );
  }
}





