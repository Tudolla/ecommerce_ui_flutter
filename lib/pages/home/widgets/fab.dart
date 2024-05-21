import 'package:amazon_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FloatingAB extends StatefulWidget {
  const FloatingAB({super.key});

  @override
  State<FloatingAB> createState() => _FloatingABState();
}

class _FloatingABState extends State<FloatingAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      focusElevation: 60,
      child: Icon(Icons.list_alt_outlined),
      shape: CircleBorder(),
      backgroundColor: Colors.blue[200],
      elevation: 10,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('All things', style: GoogleFonts.lato( textStyle: TextStyle(
                                fontSize: 20,
                                
                              ),)),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.search)),
                            ]),
                        SizedBox(
                          height: Constants.kPadding,
                        ),
                        _buildCategory(
                            category: "Xuka Shinichi",
                            iconData: Icons.book,
                            color: Colors.blue),
                        _buildCategory(
                            category: "Kudo Kuru",
                            iconData: Icons.games_outlined,
                            color: Colors.orange),
                        _buildCategory(
                            category: "Zeus Marguine",
                            iconData: Icons.health_and_safety_outlined,
                            color: Colors.pinkAccent),
                        _buildCategory(
                            category: "Cristiano Neymar",
                            iconData: Icons.book_online_outlined,
                            color: Colors.purpleAccent),
                        _buildCategory(
                            category: "Mpabbe Junior",
                            iconData: Icons.local_grocery_store_outlined,
                            color: Colors.greenAccent),
                        _buildCategory(
                            category: "Halland Girl",
                            iconData: Icons.book,
                            color: Colors.deepPurple),
                        _buildCategory(
                            category: "Pep Messi",
                            iconData: Icons.book,
                            color: Colors.grey),
                        _buildCategory(
                            category: "Doku Atalanta",
                            iconData: Icons.book,
                            color: Colors.yellow),
                      ],
                    ),
                  ),
                ));
      },
    );
  }
}

Widget _buildCategory(
    {required String category,
    required IconData iconData,
    required Color color}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: Constants.kPadding,
    ),
    child: InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: Constants.kPadding * 2,
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
