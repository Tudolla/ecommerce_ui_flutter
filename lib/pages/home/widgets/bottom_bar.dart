import 'package:flutter/material.dart';

Widget buildBottomBar()=> BottomAppBar(
  padding: EdgeInsets.all(6.0),
 
  shape: CircularNotchedRectangle(),
  notchMargin: 2.0,
  child: Container(
    height: 30,
    child: Row(
      
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Padding(padding: EdgeInsets.only(left: 20,),
      
      child: IconButton(
        onPressed: (){},
        icon:Icon(Icons.message_outlined),
        style: IconButton.styleFrom(
          focusColor: Colors.blue[300],
          fixedSize: Size(20, 20),
        ),), 
      ),
    
      Padding(padding: EdgeInsets.only(left: 30, right: 30),
      
      child: IconButton(
        onPressed: (){},
        icon:Icon(Icons.card_travel_outlined),), 
      ),


      Padding(padding: EdgeInsets.only(left: 20, right: 30),
      
      child: IconButton(
        onPressed: (){},
        icon:Icon(Icons.home_filled),), 
      ),
    ],),
  ),
);