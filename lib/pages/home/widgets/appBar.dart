import 'package:amazon_ui/constants.dart';
import 'package:flutter/material.dart';


AppBar buildAppBar()=> AppBar(
  backgroundColor: const Color.fromARGB(255, 170, 233, 241),
  elevation: 0,
  centerTitle: false,
  title: Image.asset('assets/icons/logo.png', height: 42,),
  actions: [
    Padding(padding: EdgeInsets.all(Constants.kPadding),
    child: CircleAvatar(backgroundImage: AssetImage('assets/images/loan.jpg'),),
    ),
    
  ],);