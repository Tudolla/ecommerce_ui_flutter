import 'package:amazon_ui/pages/home/widgets/appBar.dart';
import 'package:amazon_ui/pages/home/widgets/best_book.dart';
import 'package:amazon_ui/pages/home/widgets/book_list.dart';
import 'package:amazon_ui/pages/home/widgets/bottom_bar.dart';
import 'package:amazon_ui/pages/home/widgets/fab.dart';
import 'package:amazon_ui/pages/home/widgets/header.dart';
import 'package:amazon_ui/pages/home/widgets/bar_icon_list.dart';
import 'package:amazon_ui/pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ...header(),
          
          
          searchBar(),
          buildListIcon(),
          const SizedBox(height: 10,),


          BookList(),
          BestBook(),

          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      
    
      floatingActionButton:FloatingAB() ,
      bottomNavigationBar: buildBottomBar(),
    );
  }
}