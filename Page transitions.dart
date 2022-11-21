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
            body:ListView(
            children: [
            Center(child:Icon(Icons.account_balance,color: Colors.deepOrange,size: 160,)),
              ElevatedButton(onPressed: (){
                Navigator.push(context,Myroute(Second(),AxisDirection.right));
              }, child: Text('Next Page',style: TextStyle(fontSize: 30),))
            ]),
    ),
  );
  }
}



class Second extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        body:Column(
          mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Center(child: Icon(Icons.account_balance,color: Colors.white,size: 160,)),
              Text('Second screen',style: TextStyle(fontSize: 35,color: Colors.white),),
            ]),
      ),
    );
  }
}




class Myroute extends PageRouteBuilder{
  final Widget child;
  final AxisDirection direction;
  var o;
  Myroute(this.child,this.direction):super(pageBuilder:(BuildContext, Animation , Animatio )=>child );

  Duration get transitionDuration => Duration(seconds: 3);

  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
   var T=Tween<Offset>(begin: Getoffset(direction),end: Offset.zero);
   var T1=Tween<double>(begin: 3.0,end: 1.0);
    return ScaleTransition(
        child: child,
        scale: animation.drive(T1.chain(CurveTween(curve: Curves.bounceInOut))));
  }

Offset Getoffset(direction){
  switch(direction) {
    case AxisDirection.up:
      o = Offset(0, -1);
      break;
    case AxisDirection.down:
      o = Offset(0, 1);
      break;
    case AxisDirection.right:
      o = Offset(1, 0);
      break;
    case AxisDirection.left:
      o = Offset(-1, 0);
      break;
  }
  return o;
}
}











