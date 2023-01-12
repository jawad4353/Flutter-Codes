import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        home: First())
);

StreamController mycontroller=new StreamController();
var mystream=mycontroller.stream.asBroadcastStream();

class First extends StatelessWidget {
  var num=0;
  Number()  {
    Timer.periodic(Duration(seconds: 1), (timer) {
      mycontroller.sink.add(num);
      num++;
    });
  }

  var sub1=mystream.listen((event) { print(event);});
  var sub2=mystream.listen((event) { print(event);});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Streams'),centerTitle: true,backgroundColor: Colors.deepPurpleAccent,),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed:(){Number();},child: Text('Start'),),
                ElevatedButton(onPressed:(){sub1.pause();},child: Text('Pause'),),
                ElevatedButton(onPressed:(){sub1.resume();},child: Text('Resume'),),
                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Second()));
                },child: Text('new Screen'),),
              ],
        )
    );
  }

}





class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:StreamBuilder(
       stream: mystream,
       builder: (context,data)=>Center(child: Text('${data.data}',style: TextStyle(fontSize: 34),)),
     ),
   );
  }
}

