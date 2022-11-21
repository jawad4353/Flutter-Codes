import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
  ));
}

var Myrow=[1,3,4],B=[13,23,33,false],
    Mycolumn=['Darab',"Jawad","Ashi"];

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return  SafeArea(
    child: Scaffold(
        appBar: AppBar(title:Text('DataTable'),centerTitle: true,backgroundColor: Colors.pink,),
          body:Container(
            height: 190,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40)
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(

                columnSpacing: 90,
                dataRowColor: MaterialStateProperty.resolveWith((states) => Colors.purple),
                dataRowHeight: 70,
                headingRowHeight: 70,
                headingRowColor:MaterialStateProperty.resolveWith((states) => Colors.yellow) ,
                dataTextStyle: TextStyle(fontSize: 34,color: Colors.white),
                headingTextStyle:TextStyle(fontSize: 34,color: Colors.deepOrange) ,
                dividerThickness: 9,
                showBottomBorder: true,
                 border: TableBorder(
                   verticalInside: BorderSide(color: Colors.black,width: 9),
                   horizontalInside: BorderSide(color: Colors.black,width: 9),
                   top: BorderSide(color: Colors.blue,width: 9)
                 ),


                columns: Mycolumn.map((e) => DataColumn(label: Text(e))).toList(),
              rows: B.map((e) => DataRow(cells: Myrow.map((e) => DataCell(Text('$e'))).toList())).toList(),

              ),
            ),
          )
          )
    );
  }
}




// DataRow(cells: A.map((e) =>DataCell(Text('$e'))).toList()),

// DataRow(cells: [
// DataCell(Text('HI 1')),
// DataCell(Text('HI 1')),
// DataCell(Text('HI 1')),
// DataCell(Text('HI 1'))]
// ),

