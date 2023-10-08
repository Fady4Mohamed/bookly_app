import 'package:bookly_app/features/buying%20book/presentation/widget/buyingsuggestitem.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class buyingsuggestlist
 extends StatelessWidget {
  const buyingsuggestlist
  ({super.key, required this.titel, required this.books});
 final String titel;
 final List<BookModel> books ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14 ,
      child: ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only (left:  16),
          child: buyingsuggestitem(book: books[index], ),
        );
      },),
    );
  }
}