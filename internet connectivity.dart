import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';


void main()  {
  runApp(MaterialApp(
    home:First() ,
  ));
}


class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}


class _FirstState extends State<First> {

  Future<void> Check_Internet_SingleTime() async {
    var my_result=(await Connectivity().checkConnectivity());
    if (my_result == ConnectivityResult.mobile) {
      print('mobile');}
    else if (my_result == ConnectivityResult.wifi) {
      print('Wifi');}

    else if (my_result == ConnectivityResult.ethernet) {
      print('Blutooth');}

    else if (my_result == ConnectivityResult.none){
      print('Not connected');}
  
  }


initState() {
  super.initState();
  var subscription = Connectivity().onConnectivityChanged.listen(( my_result) {
    if (my_result == ConnectivityResult.mobile) {
      print('mobile');}
    else if (my_result == ConnectivityResult.wifi) {
      print('Wifi');}

    else if (my_result == ConnectivityResult.ethernet) {
      print('Blutooth');}

    else if (my_result == ConnectivityResult.none){
      print('Not connected');}
  });
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Internet Connection"), backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,),
    );
  }
}





