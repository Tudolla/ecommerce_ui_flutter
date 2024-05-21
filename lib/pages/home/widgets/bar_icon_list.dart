import 'package:amazon_ui/constants.dart';
import 'package:amazon_ui/models/icon_model.dart';
import 'package:flutter/material.dart';

final List<IconModel> listIcon = IconModel.icons;

Widget buildListIcon()=> Padding(
  padding: EdgeInsets.only(top: Constants.kPadding),
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        listIcon.length
        , (index)=> Container(
          width: 80,
          child: Column(children : [
            Image.asset(listIcon[index].icon, width: 40, height: 40,),
            Text(listIcon[index].title),
          ] ),
        ) )
    
    ),
  ),
);