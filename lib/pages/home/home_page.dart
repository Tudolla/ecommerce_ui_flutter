import 'package:amazon_ui/pages/home/widgets/appBar.dart';
import 'package:amazon_ui/pages/home/widgets/header.dart';
import 'package:amazon_ui/pages/home/widgets/searchBar.dart';
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

          ]
        ),
      ),
    );
  }
}