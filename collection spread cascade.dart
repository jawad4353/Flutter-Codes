import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:First()));
}

class First extends StatelessWidget {
  var s=false;
  var names=['Jawad','Ali','Hina','Osama'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Collection if & for Operator '),centerTitle: true,backgroundColor:
        Colors.deepPurpleAccent,),
        body: ListView(
          children: [
            Container(height: 100,color: Colors.yellow,),
            if(s)
            Container(height: 100,color: Colors.pink,),
            Container(height: 100,color: Colors.green,),

            for(int i=0;i<names.length;i++)
              Text('${names[i]}'.toLowerCase(),style: TextStyle(fontSize: 34),),
            Container(height: 100,color: Colors.green,),

            for(int i=0;i<6;i++)
              Container(height: 100,color: Colors.pink,child:  Text('${i}',style: TextStyle(fontSize: 34),),)
            ,Container(height: 100,color: Colors.green,)

          ],
        )
    );
  }
}






// SPREAD OPERATOR

// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(
//     MaterialApp(
//       home:First()));
// }
//
// class First extends StatelessWidget {
//   var names=[Text('Jawad'),Container(height: 80,color: Colors.deepOrange,)];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Spread Operator '),centerTitle: true,backgroundColor:
//         Colors.deepPurpleAccent,),
//         body: ListView(
//           children: [
//             Container(height: 100,color: Colors.yellow,),
//             ...names,
//             Container(height: 100,color: Colors.green,)
//
//           ],
//         )
//     );
//   }
// }
//










// CASCADE OPERATOR 

// class Second {
//   var age,weight,city;
// }
//
// void main(){
//   //without Cascade Notation
//   Second obj= Second();
//   obj.age=23;
//   obj.weight=78;
//   obj.city='Lahore';
//
//   //with Cascade Notation
//   Second obj1= Second()
//     ..age=23
//     ..weight=78
//     ..city='Lahore';
//
// }
