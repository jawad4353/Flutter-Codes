//
// Radio(
// value: 2,
// groupValue: selected,
// onChanged: (a){
// setState(() {
// selected=a!;
// print(a);
// });
// },
// ),
//
// Text('Cricket1')
// ],
// ), Row(
// children: [
// Radio(
// value: -1,
// groupValue: selected,
// onChanged: (a){ setState(() {
// selected=a!;
// print(a);
// });},
// ),
// Text('Cricket2')
// ],
// ), Row(
// children: [
// Radio(
// value: 0,
// groupValue: selected,
// onChanged: (a){ setState(() {
// selected=a!;
// print(a);
// });},
// ),
// Text('Cricket3')
// ],
// ),










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
  var selected=5,selectedtile=[false,false,false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,backgroundColor: Colors.pink,title: Text('RadioButtons Eaxmples',),),
        body: ListView(
          children: [
            RadioListTile(
              activeColor: Colors.white,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
                 side: BorderSide(
                   color: Colors.black,
                   width: 4
                 )
               ),
               selectedTileColor: Colors.pink,
                selected: selectedtile[0],
                title: Text('Wearther',),
                subtitle: Text('cool'),
                secondary: Icon(Icons.wb_sunny),
                value: 0,
                groupValue: selected,
                onChanged: (a){
                  setState(() {
                    selectedtile.replaceRange(0, selectedtile.length,selectedtile.map((element) => false) );
                    selected=a!;
                    selectedtile[a]=true;
                  });
                }
                ),
            RadioListTile(
                selectedTileColor: Colors.pink,
                selected: selectedtile[1],
                title: Text('Wearther'),
                subtitle: Text('cool'),
                secondary: Icon(Icons.wb_sunny),
                value: 1,
                groupValue: selected,
                onChanged: (a){
                  setState(() {
                    selectedtile.replaceRange(0, selectedtile.length,selectedtile.map((element) => false) );
                    selected=a!;
                    selectedtile[a]=true;
                  });
                }
            ),
            RadioListTile(
                selectedTileColor: Colors.pink,
                selected: selectedtile[2],
                title: Text('Wearther'),
                subtitle: Text('cool'),
                secondary: Icon(Icons.wb_sunny),
                value: 2,
                groupValue: selected,
                onChanged: (a){  setState(() {
                  selected=a!;
                  selectedtile.replaceRange(0, selectedtile.length,selectedtile.map((element) => false) );
                  selectedtile[a]=true;
                });}
            ),
         ])
      ),
    );
  }
}