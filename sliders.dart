import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: First(),
      ));
}

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  var Myvalue=40.8;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Sliders'),backgroundColor: Colors.amber,centerTitle: true,),
        body: Column(
          children: [
            Container(
            height: 500,
              child: RotatedBox(
                quarterTurns: 3,
                child: SliderTheme(
                  data: SliderThemeData(
                      trackHeight: 24,
                      activeTrackColor: Colors.green,
                      inactiveTrackColor: Colors.green.shade100,

                      thumbColor: Colors.green,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 17
                      ),

                      valueIndicatorColor: Colors.green,


                      activeTickMarkColor: Colors.amber,
                      inactiveTickMarkColor: Colors.black,
                      tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 13
                      )
                      
                      ,overlayColor: Colors.black,
                    
                  ),
                  child: Slider(
                    value: Myvalue,
                    label: Myvalue.toString(),
                    divisions: 3,
                    onChanged: (a){setState(() {
                      Myvalue=a;
                      print(a);
                    });},
                    min: 0,
                    max: 100,
                  ),
                ),
              ),
            ),
            Slider(
              value: Myvalue,
              thumbColor: Colors.green,
              inactiveColor:Colors.green.shade200 ,
              activeColor: Colors.green,
              label: Myvalue.toString(),
              divisions: 4,
              onChanged: (a){setState(() {
                Myvalue=a;
                print(a);
              });},
              min: 0,
              max: 100,
            )
          ],
        ),),
    );
  }
}



















// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: First(),
//       ));
// }
//
// class First extends StatefulWidget {
//   @override
//   State<First> createState() => _FirstState();
// }
//
// class _FirstState extends State<First> {
//   var Myvalue=40.8;
//
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(title: Text('Sliders'),backgroundColor: Colors.amber,centerTitle: true,),
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Transform.rotate(
//                     angle: 1.53,
//                     child: SizedBox(
//                       width: 260,
//                       child: SliderTheme(
//                         data: SliderThemeData(
//                             trackHeight: 54,
//                             activeTrackColor: Colors.green,
//                             inactiveTrackColor: Colors.green.shade100,
//
//                             thumbColor: Colors.green,
//                             thumbShape: RoundSliderThumbShape(
//                                 enabledThumbRadius: 17
//                             ),
//
//                             valueIndicatorColor: Colors.green,
//
//                             activeTickMarkColor: Colors.amber,
//                             inactiveTickMarkColor: Colors.black,
//                             tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 13
//                             )
//                         ),
//                         child: Slider(
//                           value: Myvalue,
//                           label: Myvalue.toString(),
//                           divisions: 10,
//                           onChanged: (a){setState(() {Myvalue=a;print(a);});},
//                           onChangeStart: (a){print('Start ${a}');},
//                           onChangeEnd: (a){print('End ${a}');},
//                           min: 0,
//                           max: 100,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),),
//     );
//   }
// }
//
//
//
