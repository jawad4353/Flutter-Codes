import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main()  {
  runApp(MaterialApp(
    home: First(),
  ));
}


class First extends StatelessWidget {
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple,
        body:Center(child:SpinKitCircle(
          size: 150.0,
          duration: Duration(seconds: 3),
          itemBuilder: ((context, index) {
            var Mycolors=[Colors.pink,Colors.indigo,Colors.yellow,Colors.blue];
            var Mycol=Mycolors[index%Mycolors.length];
            print(index);
            return DecoratedBox(decoration: BoxDecoration(
              color: Mycol,
              shape: BoxShape.circle
            ));
          }),
        ),

        )
    );
  }
}





//




























