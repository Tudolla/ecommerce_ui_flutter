class BookModel{
  final String title;
  final String image;
  final String description;
  final bool isLiked;


  BookModel({
    required this.title,
    required this.image,
    required this.description,
    required this.isLiked,
  });

  static BookModel newbook = 
BookModel(title: 'Harry Smocker', image: 'assets/images/book.jpg', description: 'Nothing gonna change my love for you', isLiked: false);
  static List<BookModel> booklist = [
    BookModel(title: 'Harry Smocker', image: 'assets/images/book1.png', description: 'Nothing gonna change my love for you', isLiked: false),

    BookModel(title: 'bayer Munich', image: 'assets/images/book2.jpg', description: 'Nothing gonna change my love for you', isLiked: false),


    BookModel(title: 'Doraemon Oke', image: 'assets/images/book3.jpg', description: 'Nothing gonna change my love for you', isLiked: false),


    BookModel(title: '2 life of scar king', image: 'assets/images/book4.jpg', description: 'Nothing gonna change my love for you', isLiked: false),

  ];


}