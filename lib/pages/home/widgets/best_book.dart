import 'package:amazon_ui/constants.dart';
import 'package:amazon_ui/models/book_model.dart';
import 'package:amazon_ui/pages/home/widgets/book_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BestBook extends StatelessWidget {
   BestBook({super.key});

  BookModel newbook = BookModel.newbook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(Constants.kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best book release', style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 48, 147, 239),

              ),

            ),
            ),
            Icon(Icons.keyboard_arrow_right),

          ],

        ),),
         InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Constants.kPadding),
                          child: Card(
                            elevation: 10,
                            child: ClipRRect(borderRadius: BorderRadius.circular(10),
                            child: Image.asset(newbook.image, height: 160, width: double.infinity,
                            fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
      ],
    );
  }
}