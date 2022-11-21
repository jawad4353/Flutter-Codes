import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:first() ,
  ));
}
class first extends StatelessWidget{
  var Iconlist=[Icon(Icons.mail,size: 100,),Icon(Icons.museum,size: 100),Icon(Icons.portrait,size: 100),Icon(Icons.wifi,size: 100),Icon(Icons.https,size: 100),
  Icon(Icons.mail,size: 100,),Icon(Icons.museum,size: 100),Icon(Icons.portrait,size: 100),Icon(Icons.wifi,size: 100),Icon(Icons.https,size: 100),
  Icon(Icons.mail,size: 100,),Icon(Icons.museum,size: 100),Icon(Icons.portrait,size: 100),Icon(Icons.wifi,size: 100),Icon(Icons.https,size: 100),
];
ScrollController myc=new ScrollController();

  @override
  Widget build(BuildContext context) {
    var orientation=MediaQuery.of(context).orientation;
var count=2;
orientation==Orientation.portrait? count=2:count=4;
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(title: Text('GridView Count & Builder'),
         backgroundColor: Colors.pink,centerTitle: true,actions: [
           IconButton(icon: Icon(Icons.upload_rounded),onPressed: (){
             myc.jumpTo(0);
           },),
IconButton(icon: Icon(Icons.arrow_circle_down_rounded),onPressed: (){
  myc.jumpTo(myc.position.maxScrollExtent);
},),
         ],),
     body: GridView.builder(
       gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: count,
         mainAxisSpacing: 20,
         crossAxisSpacing: 20,
         childAspectRatio: 1/1,
       ) ,
       reverse: true,
       controller: myc,
       itemCount: Iconlist.length,
       itemBuilder: (context, index) =>
           Container(height:200,color:Colors.pink,
             child: Iconlist[index]),

     )

));
  }
}






// Container(height: 200,color: Colors.pink,),
// Container(height: 200,color: Colors.indigoAccent,),
// Container(height: 200,color: Colors.green,),
// Container(height: 200,color: Colors.yellow,),
// Container(height: 200,color: Colors.blue,),
// Container(height: 200,color: Colors.orange,),
// Container(height: 200,color: Colors.cyanAccent,),
// Container(height: 200,color: Colors.amber,),