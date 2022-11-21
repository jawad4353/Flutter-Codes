import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:first() ,
  ));
}
class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(title: Text('Date & Time Pickers'),backgroundColor: Colors.pink,centerTitle: true,),
     body: Center(child: ElevatedButton(onPressed: ()=>Mypicker(context),child: Text('Show Picker'),),),
     ),
   );
  }
  Mypicker(context)
  {
    showDatePicker(context: context,
       initialDate: DateTime(2021,04),
       firstDate: DateTime(1990,03,24),
       lastDate: DateTime.now(),

       confirmText: 'J Confirm',
      cancelText: 'J Cancel',
      helpText: 'This is my Picked g',
      fieldHintText:'My yy//dd/d//' ,
      fieldLabelText:"My Date Gg" ,


      builder: (context, child) =>  Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
               primary: Colors.pink,
              onPrimary: Colors.yellow,
              surface: Colors.green,
              onSurface: Colors.deepPurple
            ),
         inputDecorationTheme: InputDecorationTheme(),
         textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.pink,selectionColor: Colors.indigo),
          dialogBackgroundColor: Colors.yellow,
            textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            ))
          ),
          child: child!,
        ),
    ).then((value) => print(value));

  }

}