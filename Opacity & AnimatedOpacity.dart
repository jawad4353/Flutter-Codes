import 'package:flutter/material.dart';

void main()
{  runApp(
   MaterialApp(
    home: first(),)
);}

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  var Items=[['Wrestling',"images/a.png",false],['Cricket',"images/b.png",false],
  ['Body Building',"images/c.png",false],['Diet',"images/f4.jpg",false],
  ['Diet',"images/f4.jpg",false]];
  var tapped=false;

  @override
  Widget build(BuildContext context) {
   return  Scaffold(

       appBar: AppBar(title: Text('Opacity '),centerTitle: true,backgroundColor: Colors.pink,),
       body: ListView.builder(
         itemCount: Items.length,
         itemBuilder: (context, index) =>InkWell(
           onTapDown: (a){
             setState(() {
               tapped=!tapped;
               Items[index][2]=tapped;
             });
           },
           child: Stack(
             children: [
               Container(
                 height: 300,
                 width: 250,
                 decoration: BoxDecoration(
                   color: Colors.pink,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: AnimatedOpacity(duration: Duration(milliseconds: 700),
                   opacity: Items[index][2]==true? 1.0:0.3,child: Image.asset('${Items[index][1]}',fit: BoxFit.fitHeight,),),
               ),
               Text('${Items[index][0]}',style: TextStyle(fontSize: 29,color: Colors.white),)
             ],
           ),
         ) ),
       
        
   );
  }
}