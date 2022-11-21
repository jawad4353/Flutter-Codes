import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:first() ,
  ));
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle:true,title:Text('Dialogue ',),),
       body: ListView(
        children: [

             ElevatedButton(onPressed: (){
               showDialog(context: context, builder: (context)=>My(context));
             }, child: Text('Show',style: TextStyle(fontSize: 27),))
        ],),
      ),
    );}

  My(context){
return SimpleDialog(
  children: [
    SimpleDialogOption()
  ],
);
  }

}





// title: Text('SimpleDialogue',style: TextStyle(fontSize: 21,color: Colors.white),),
// backgroundColor: Colors.pink,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
// clipBehavior: Clip.antiAlias,
// contentPadding: EdgeInsets.zero,
// alignment: Alignment.center,
// children: [
// SimpleDialogOption(child:  Text('Apple',style: TextStyle(fontSize: 21,color: Colors.white),), onPressed: (){
// print('g');
// Navigator.of(context).pop();
// },),
// SimpleDialogOption(child:  Text('Apple2',style: TextStyle(fontSize: 21,color: Colors.white),), onPressed: (){
// Navigator.of(context).pop();
// },),
//
// ],




//
// iconColor: Colors.cyan,
// backgroundColor: Colors.limeAccent,
// icon: Icon(Icons.api),
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// contentPadding: EdgeInsets.zero,
// alignment: Alignment.topRight,
// title: Text('LertDialogue',style: TextStyle(fontSize: 32,color: Colors.red),),
// content:  Text('Its not working'),
// actions: [TextButton(onPressed: (){}, child: Text('Accept')),TextButton(onPressed: (){}, child: Text('Decline'))],







// applicationIcon: Icon(Icons.star),
//
// applicationLegalese: "JdTech",
// applicationName: "Daraz"
// ,
//
// applicationVersion: '3.3',
// children: [
// Text('Hi')
// ],