import 'package:amazon_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


List<Widget> header() => [
  Padding(padding: EdgeInsets.only(
    left: Constants.kPadding *2,
    top: Constants.kPadding,
  ),
  child: Text(
    'Tiki Legend',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: Constants.mainColor,
    ),),
  ),
  
  Padding(padding: EdgeInsets.only(
    left: Constants.kPadding *2,
    
  ),
  child: Text(
    'Be yourself at shopping',
    style: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      color: Colors.grey,
    ),),
  ),

];