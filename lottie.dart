
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
    home: First(),
  ));
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Lottie Animation'),centerTitle:true ,),
        body: ListView(
          children: [
            LottieBuilder.network('https://assets6.lottiefiles.com/packages/lf20_iu2eauds.json'),

           Lottie.asset('images/w.json',
           onLoaded: (a){print('loaded');},
             repeat: true,
             reverse: true,
             animate: true,
             height: 300,
             fit: BoxFit.fitHeight,
             errorBuilder: (BuildContext c,a,s)=>Text('error Ocurred'),
           )
            ,

          ],
        ),
      ),
    );
  }
  
}