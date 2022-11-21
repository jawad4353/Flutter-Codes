import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: first(),
  ));
}

var Cities=['Lahore','Karachi','Ladhkana','Lalliyan','Sargodha','Samundari', 'Gujranwala',
  'Sialkot', 'Sheikhupura','Rahim yar khan','Attock','Kabul'];
var Recentcities=['Kabul','Lahore'],Myselected;


class first extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar:  AppBar(title: Text('My_Search_Bar'),centerTitle: true,backgroundColor: Colors.pink,),
        body:  IconButton(onPressed: (){
          showSearch(context: context, delegate: Mysearch());
        },icon: Icon(Icons.search,color: Colors.pink,size: 35,),)
      );}
}





class Mysearch extends SearchDelegate<String>{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (){},icon: Icon(Icons.clear_all,color: Colors.indigo,size: 35,),),];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, '');},icon: Icon(Icons.arrow_back_ios,color: Colors.indigo,size: 35,),);
  }

  @override
  Widget buildResults(BuildContext context) {

   return Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var Matching=Cities.where((element) => element.toLowerCase().startsWith(query.toLowerCase())).toList();

  return   ListView.builder(
       itemCount:Matching.length,
       itemBuilder: (context, index) {

         var Querybold=Matching[index].substring(0,query.length);
        var Unboldquery=Matching[index].substring(query.length);

       return InkWell(
         onTap: (){},
         child: Row(
           children: [
                 Icon(Icons.location_city,color: Colors.pink,size: 28,),
                  RichText(text: TextSpan(children: [
                    TextSpan(text: '${Unboldquery}',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 24),)
                  ],text: '$Querybold',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 24),))
           ],
         )
       );
 }
 );
  }





  ThemeData appBarTheme(BuildContext context) {
  return ThemeData(
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.indigo,selectionColor: Colors.pink)
  ,
      inputDecorationTheme: InputDecorationTheme(

        hintStyle: TextStyle(fontSize: 35,color: Colors.white),
        contentPadding: EdgeInsets.zero,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.white,width: 3)
        )
      ),
    textTheme: TextTheme(headline6: TextStyle(fontSize: 34,color: Colors.white))
,
    colorScheme: ColorScheme.light(
      primary: Colors.black,
    )
  );
 }
  
}









// ListView.builder(
//     itemCount:Matching.length,
//     itemBuilder: (context, index) {
//     return Row(
//        children: [
//              Icon(Icons.location_city,color: Colors.pink,size: 28,),
//              Text("${Matching[index]}")
//       ],
//    );
// }
// );



// class Newpage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Text(''),);
//   }
// }

// Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Newpage()));

// var Querybold=Matching[index].substring(0,query.length);
// var Unboldquery=Matching[index].substring(query.length);

// ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

// ThemeData appBarTheme(BuildContext context) {
//   return ThemeData();
// }