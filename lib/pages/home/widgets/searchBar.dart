import 'package:amazon_ui/constants.dart';
import 'package:flutter/material.dart';


Widget searchBar()=> Padding(padding: EdgeInsets.all(Constants.kPadding),
child: TextField(
  decoration: InputDecoration(
    hintText: 'Search a product...',
    fillColor: Colors.grey.withOpacity(0.2),
    filled: true,
    prefixIcon: Icon(Icons.search),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(9.0),
      borderSide: BorderSide.none,
    )
  ),

  

  ),);