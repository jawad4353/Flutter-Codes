import "package:flutter/material.dart";
void main(){
  runApp(MaterialApp(
    home: home(),
  ));
}
class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController jd=new TabController(length: 3, vsync: this);
    setState(() {
      jd.animateTo(2);
    });
 return Scaffold(
     appBar: AppBar(
       title: Text("Whatsapp"),
       bottom: TabBar(
         controller: jd,
         tabs: [
           Tab(text: "Chats",),
           Tab(text: "Status",),
           Tab(text: "Calls",),
         ],
       ),
     ),
     body: TabBarView(
       controller: jd,
       children: [
      first(),
         second(),
         three()

       ],
     ),
 );
  }
}

class first extends StatefulWidget{
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    var i;
 return Scaffold(

   backgroundColor: Colors.yellow,
   body: Column(
     children: [
       Text("Page no $i"),
       RaisedButton(onPressed: (){

       },child: Text("click"),)
     ],
   ),
 );
  }
}
class second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Text("I am 2nd",style: TextStyle(fontSize: 30)),
    );
  }
}
class three extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Text("I am 3rd",style: TextStyle(fontSize: 30)),
    );
  }
}