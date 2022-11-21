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
  var myvisible=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(backgroundColor:Colors.pink,centerTitle:true,
            title:Text('Visibility : Singlechilsscrollview',),),
          body:   ListView(
              children: [
              Visibility(
                visible: myvisible,
                child: Container(
                  width: 700,
                  height: 100,
                  color: Colors.indigo,
                ),
              ),
              ElevatedButton(style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.pink)
              ),onPressed: (){
                setState(() {
                  myvisible=!myvisible;
                  print(myvisible);
                });
              }, child: Text('Show/Hide',style: TextStyle(fontSize: 19),))
              ],
          ),
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
  var myvisible=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(backgroundColor:Colors.pink,centerTitle:true,
            title:Text('Visibility : Singlechilsscrollview',),),
          body:  SingleChildScrollView(
           scrollDirection: Axis.horizontal,
            child: Row(
              children: [
              Container(
                width: 700,
                height: 100,
                color: Colors.indigo,
              ),
                Container(
                  width: 700,
                  height: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
      ),
    );
  }
}


Jawad Aslam

