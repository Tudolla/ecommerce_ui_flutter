
import 'package:amazon_ui/constants.dart';
import 'package:amazon_ui/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<BookModel> booklist = BookModel.booklist;

class BookList extends StatelessWidget {
  const BookList({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Constants.kPadding),
      decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.3),

        borderRadius: BorderRadius.circular(15.9),
      ),
      
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: Constants.kPadding*1.5, vertical: Constants.kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Book bestseller', style: GoogleFonts.lato(
               textStyle:  TextStyle(color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
              ),
              ),

              TextButton(onPressed: (){}, child: 
              Text('See all'), 
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: Constants.kPadding,
                  horizontal: Constants.kPadding*2,
                ),
                
                backgroundColor: Color.fromARGB(255, 239, 229, 118), 
                foregroundColor: Colors.black,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )
                
                
              ),)
            ],
          ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Row(
                children: List.generate(
                  booklist.length
                  
                  , (index)=> Padding(padding: EdgeInsets.only(
                    top: Constants.kPadding,
                    bottom: Constants.kPadding,
                    right: Constants.kPadding/2,
                    left: index == 0 ? Constants.kPadding : 0,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      children: [
                        Card(
                          elevation: 10,
                          child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Image.asset(booklist[index].image, height: 120, width: 80,
                          fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          width: 90,
                          child: Text(booklist[index].title, 
                          style: GoogleFonts.lato(textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),)),
                        )
                      ],
                    ),
                  ),
                  )),
              ),
            ),
          )
        ],
      ),
    );
  }
}