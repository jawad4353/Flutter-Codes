import 'package:flutter/cupertino.dart';
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
  List<Fooditem> a=[];

class _firstState extends State<first> {

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor:Colors.pink,centerTitle:true,title:Text('Builder',),),
       body: ListView(
             children: [
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                       itemCount: a.length,
                       itemBuilder: (context,i){
                         return a[i];
                       }),
                ),

               ElevatedButton(onPressed: (){
                 setState(() {
                   a.forEach((w) =>print(w.mycontrol.text));
                 });
               }, child: Text('hi')),

             ],
           ),

        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            a.add(new Fooditem());
          });
        },),
     ),
    );
  }}

class Fooditem extends StatelessWidget{
  TextEditingController mycontrol= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(controller: mycontrol,);
  }


}