import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
void main()
{
  runApp(
    MaterialApp(
      home: firstscreen(),
      builder: EasyLoading.init(),
    ));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.pink
    ..indicatorColor = Colors.blue
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;

}

class firstscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
children: [

   RaisedButton(color: Colors.pinkAccent,onPressed: (){
      EasyLoading.showInfo('TExtfield is empty plz enter phone',dismissOnTap: true);
   },
     child: Text('Show',style: TextStyle(color: Colors.white),),),

],),);
  }
}