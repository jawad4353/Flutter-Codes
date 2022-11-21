import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  var radius=40.0;
var Images=['images/a.jpeg','images/b.jpg','images/c.jpg','images/d.jpg'];
var Titles=['Owner','Burger','Pizza','Coke'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
         appBar: AppBar(title: Text('Circle Avatar'),centerTitle: true,backgroundColor: Colors.pink,),
         body:ListView.builder(
            itemCount: Images.length,
           itemBuilder: (context, index) {
             return ListTile(
             leading:CircleAvatar(
             backgroundColor: Colors.pink,
             radius: 50,
             child: Text('${Titles[index][0]}'),
           ),
        title:Text('${Titles[index]}',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
);
           }),

   );
  }
}





import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
         appBar: AppBar(title: Text('Circle Avatar'),centerTitle: true,backgroundColor: Colors.pink,),
         body:ListView(
           children: [
             CircleAvatar(
               radius: 170,
               backgroundColor: Colors.pink,
               foregroundColor: Colors.yellow,
               child: Text('Hi',style: TextStyle(fontSize: 45),),
               backgroundImage: Image.asset('images/a.jpeg').image,
               onBackgroundImageError: (a,s){
                 print('Error');
               },
             )
           ],
          ),

   );
  }
}