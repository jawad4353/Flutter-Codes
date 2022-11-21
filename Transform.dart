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
  var angle,degree=90;
  @override
  Widget build(BuildContext context) {
    angle=degree*3.14/180;
    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(backgroundColor:Colors.pink,centerTitle:true,
            title:Text('Transform:Scale Rotate Translate',),),
          body: ListView(
              children: [
                Padding(padding: EdgeInsets.only(top: size.height*0.02)),
                Transform.rotate(
                   angle:angle,
                    child:Icon(Icons.api,size: 90,color: Colors.pink,)),

                Padding(padding:EdgeInsets.only(right: size.width*0.1,left:  size.width*0.1)),

                ElevatedButton(onPressed: () async {
                  for(int i=0;i<20;i++){
                    await Future.delayed(Duration(milliseconds: 50),()=>{
                        setState(() {
                               angle+=0.1;
                      })
                    });
                  };
                  for(int i=0;i<20;i++){
                    await Future.delayed(Duration(milliseconds: 50),()=>{
                      setState(() {
                        angle-=0.1;
                      })
                    });
                  };
                }, child: Text('Click'))
              ])
      ),
    );
  }
}





















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
  var x=0.9,y=0.9;
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(backgroundColor:Colors.pink,centerTitle:true,
            title:Text('Transform:Scale Rotate Translate',),),
          body: ListView(
              children: [
                Padding(padding: EdgeInsets.only(top: size.height*0.02)),

                Transform.translate(
                   offset: Offset(x,y),
                    child:Icon(Icons.api,size: 90,color: Colors.pink,)),

                Padding(padding:EdgeInsets.only(right: size.width*0.1,left:  size.width*0.1)),

                ElevatedButton(onPressed: () async {
                  for(int i=0;i<20;i++){
                    await Future.delayed(Duration(milliseconds: 50),()=>{
                      setState(() {
                        setState(() {
                               x-=3.7;
                        });
                      })
                    });
                  };
                }, child: Text('Click'))
              ])
      ),
    );
  }
}