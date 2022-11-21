import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

class first extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(title: Text('SnackBar'),centerTitle: true,backgroundColor: Colors.pink,),
      body: ListView(
        children: [
        ElevatedButton(child: Text('Show'),onPressed: (){

          ScaffoldMessenger.of(context).showSnackBar(My(context));
        },),
        ],
      ),),
  );}

My(context){
  var my= SnackBar(
       content:Row(
  children: [
      Text('No internet',style: TextStyle(color: Colors.white,fontSize: 28),),
      IconButton(onPressed: (){},icon: Icon(Icons.close),)
],
  ),
    duration: Duration(seconds: 3),
     backgroundColor: Colors.pink,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
      side: BorderSide(color: Colors.green,width: 3)
    ),
    dismissDirection: DismissDirection.down,
    onVisible: (){print('i am visible');},
    margin:EdgeInsets.only(left:20,right: 20) ,
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(label: 'Quit',textColor: Colors.white,onPressed: (){
      ScaffoldMessenger.of(context).clearSnackBars();
    },),
  );
  return my;
}

}