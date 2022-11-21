import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:first(),
  ));
}

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  var Mystep=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: Colors.pink,onPrimary: Colors.black)),
          child: Stepper(
            currentStep: Mystep,
            type: StepperType.horizontal,
            steps: [
              Step(isActive: Mystep>=0,
               title: Text('Address'),subtitle: Text('First'),content: Container(height: 200,color: Colors.pink,child: ListView(children: [
                    TextField(decoration: InputDecoration(hintText: "Name"),),
                  ],),))
              ,
              Step(isActive: Mystep>=1,title: Text('Shipped'),subtitle: Text('second'),content: Container(height: 200,color: Colors.yellow,)),
              Step(isActive: Mystep>=2,title: Text('Delivered'),subtitle: Text('3rd'),content: Container(height: 200,color: Colors.green,)),

            ],
            onStepContinue: (){Mystep==2?null:setState(() {Mystep+=1;});},
            onStepCancel: (){Mystep==0?null:setState(() {Mystep-=1;});},
            onStepTapped: (a){setState(() {Mystep=a;print(a);});},

            controlsBuilder: (context, details) => Row(
              children: [
                ElevatedButton(onPressed: details.onStepContinue, child: Text('Next')),
                ElevatedButton(onPressed: details.onStepCancel, child: Text('Back')),
              ],
            ),


          ),
        )
        ),
      );
  }
}