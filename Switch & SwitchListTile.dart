import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()  {
  runApp(
    second(),
  );
}

class second extends StatefulWidget {
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  var select=false;

  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context,Widget)=>SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Text('Switch'),centerTitle: true,),
              body:  ListView(children: [
                    SwitchListTile(
                          activeColor: Colors.cyan,
                           inactiveThumbColor: Colors.deepOrange,
                           activeThumbImage: Image.asset('images/up.png').image,
                           inactiveThumbImage:  Image.asset('images/down.png').image,
                           title: Text('jawad'),
                           subtitle: Text('I am Switch'),
                           tileColor: Colors.green,
                           selectedTileColor: Colors.black,
                           selected: select,

                           value: select, onChanged: (a){
                            setState(() {
                              select=a;
                            });
                       }),
                    


              ],)),
        ),
    );}
}








import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()  {
  runApp(
    second(),
  );
}

class second extends StatefulWidget {
  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  var select=false;
  var mytheme=ThemeData.light();
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mytheme,
        builder: (context,Widget)=>SafeArea(
          child: Scaffold(
              appBar: AppBar(title: Text('Switch'),centerTitle: true,),
              body:  ListView(children: [
                    Transform.scale(
                      scale: 3,
                      child: Switch(
                            activeColor: Colors.cyan,
                             inactiveThumbColor: Colors.deepOrange,
                             activeThumbImage: Image.asset('images/up.png').image,
                             inactiveThumbImage:  Image.asset('images/down.png').image,

                             value: select, onChanged: (a){
                              setState(() {
                                a==true? mytheme=ThemeData.dark():mytheme=ThemeData.light();
                                select=a;
                              });
                         }),
                    ),



              ],)),
        ),
    );}
}