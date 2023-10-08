import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../view/buyingview.dart';

class buyingsuggestitem extends StatelessWidget {
  const buyingsuggestitem({super.key, required this.book});
 final BookModel book ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) {
            return buyingview(book: book,);
          },));
      },
      child: SizedBox(
        
        height: MediaQuery.of(context).size.height * .14,
        child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(book.volumeInfo!.imageLinks!.thumbnail!),
                    fit: BoxFit.fill)),
          ),
        ),
      ),
    );
  }
}