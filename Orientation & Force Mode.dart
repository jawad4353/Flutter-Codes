import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight
  ]);
  runApp(MaterialApp(
    home: My_lanscape(),

  ));
}
//
// class first extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     var Myorientation=MediaQuery.of(context).orientation;
//     var Mysize=MediaQuery.of(context).size;
//     print(Myorientation);
//     print('${Mysize.width} * ${Mysize.height}');
//    return SafeArea(
//      child: Scaffold(
//        appBar: AppBar(title: Text('$Myorientation'),centerTitle: true,backgroundColor: Colors.yellow,),
//        body: Myorientation==Orientation.portrait? My_Portrait():My_lanscape()
//      ),
//    );
//   }
//
// }





class My_Portrait extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [

              Container(height: 300,width: 200,color: Colors.pink,
                child: Text('First',style: TextStyle(fontSize: 29,color: Colors.white),),),

              Container(height: 300,width: 200,color: Colors.indigo,
                child: Text('Second',style: TextStyle(fontSize: 29,color: Colors.white),),),
            ],
          ),
        ),),);
  }
}





class My_lanscape extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            children: [

              Container(height: 300,width: 200,color: Colors.pink,
                child: Text('First land',style: TextStyle(fontSize: 29,color: Colors.white),),),

              Container(height: 300,width: 200,color: Colors.indigo,
                child: Text('Second land',style: TextStyle(fontSize: 29,color: Colors.white),),),
            ],
          ),
        ),));
  }
}