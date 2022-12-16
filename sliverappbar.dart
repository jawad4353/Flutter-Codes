import 'package:flutter/material.dart';

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
        drawer: Drawer(),
        body:CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      floating: true,
                      pinned: true,
                     toolbarHeight:69 ,

                     flexibleSpace: Container(
                       height: 170,
                       child:Text('\n \nHi jawad',style: TextStyle(color: Colors.white,fontSize: 34,fontFamily: 'Myjd'),) ,
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft:Radius.circular(40) ),
                    gradient: LinearGradient(colors: [Colors.pink,Colors.purpleAccent]
)
),
                   ),
                      expandedHeight: 170,
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      actions: [
                        Icon(Icons.search,size: 34,color: Colors.white,)
                      ],
                      title: Text('Sliver AppBar',style: TextStyle(fontSize: 28,fontFamily: 'Myjd'),),
                    ),
                  SliverPadding(padding: EdgeInsets.only(top: 80)),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 500,
                      color: Colors.purple,
                    ),
                  ),
                    SliverToBoxAdapter(
                      child: Container(
                        height: 700,
                        color: Colors.green,
                      ),
                    ),
                  ],
        ),)
    );
  }
}



