import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:first() ,
  ));
}

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  var selected=[false,false,false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,backgroundColor: Colors.pink,title: Text('Check Boxes Eaxmple',),),
        body: ListView(
          children: [
           CheckboxListTile(
             title: Text('Gmail',style: TextStyle(fontSize: 23,color: Colors.white),),
               subtitle: Text('ww.gmail\n.com'),
            selectedTileColor: Colors.pink,
               selected: selected[0],

               value: selected[0],
               onChanged: (a){
                 setState(() {
                   selected[0]=a!;

                 });
               }),
            CheckboxListTile(
                selectedTileColor: Colors.pink,
                selected: selected[1],
                title: Text('yahool'),
                subtitle: Text('w4564w.gmail.com'),
                value: selected[1],
                onChanged: (a){
                  setState(() {
                    selected[1]=a!;
                  });
                }),
            CheckboxListTile(
                selectedTileColor: Colors.pink,
                selected: selected[2],
                title: Text('Hmail'),
                subtitle: Text('ww45645.gmail.com'),
                value: selected[2],
                onChanged: (a){
                  setState(() {
                    selected[2]=a!;
                  });
                }),
         ])
      ),
    );
  }
}


//
//
// Transform.rotate(
// angle: 59,
// child: Checkbox(
// value: selected[0],
// onChanged: (a){
// setState(() {
// selected[0]=a!;
// print(a);
// });
// }),
// ),
// Text('Cofee')
// ],
// ),
// Row(
// children: [
// Checkbox(value: selected[1],
// onChanged: (a){  setState(() {
// selected[1]=a!;
// print(a);
// });}),
// Text('Cofee1')
// ],
// ),
// Row(
// children: [
// Checkbox(value: selected[2],
// onChanged: (a){  setState(() {
// selected[2]=a!;
// print(a);
// });}),
// Text('Cofee2')
// ],