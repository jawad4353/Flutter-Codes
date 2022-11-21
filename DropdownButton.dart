import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

var Cities=['Lahore','Karachi','Ladhkana','Lalliyan','Sargodha','Samundari',
  'Gujranwala', 'Sialkot', 'Sheikhupura','Attock','Kabul'];

class first extends StatefulWidget {
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  var Myselected=Cities[0];

  @override
  Widget build(BuildContext context) {
  return  SafeArea(
    child: Scaffold(
        appBar: AppBar(title:Text('DropDownButton'),centerTitle: true,backgroundColor: Colors.pink,),
          body:Container(
            height: 80,
            width: 860,
            decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: Colors.green
),

          child: DropdownButton(
                isExpanded: true,
                iconSize: 78,
                icon: Icon(Icons.location_city),
                style: TextStyle(fontSize: 34,color: Colors.white),
                dropdownColor: Colors.purple,
                borderRadius: BorderRadius.circular(50),
                 menuMaxHeight:290 ,
                itemHeight: 50,
                onTap: (){print('Dropdown cliucked');},
                value: Myselected,
            underline: Text('_______---------------------------'),

                items: Cities.map((e) => DropdownMenuItem(value:e,child: Text(e))).toList(),
                onChanged: (a){
                  setState(() {
                    Myselected=a!;
                    print(a);
                  });
                  },
              ),
          ),
          )

    );
  }
}