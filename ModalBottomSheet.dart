import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

var Cities=['Lahore','Karachi','Ladhkana','Lalliyan','Sargodha','Samundari',
  'Gujranwala', 'Sialkot', 'Sheikhupura','Attock','Kabul'];

class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(title: Text('ModalBottomSheet'),centerTitle: true,backgroundColor: Colors.pink,),
      body: Stack(
        children: [
         Container(height: 900,),
          DraggableScrollableSheet(builder: (context, scrollController) => Container(
              color: Colors.purple,
              child: ListView.builder(
                controller: scrollController,
                itemCount: Cities.length,
                itemBuilder: (context, index) =>
                  Text('${Cities[index]} \n ${Cities[index]} ',style: TextStyle(color: Colors.white,fontSize: 45),)),
            ) ,

          )
        ]
      ),),
  );}

}