import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widget/bookliestitem.dart';
import 'package:flutter/material.dart';

class bookeslist extends StatelessWidget {
  const bookeslist({super.key, required this.books});
final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return Padding(
          padding: index==0?const EdgeInsets.only(right: 0,left:20):const EdgeInsets.only(right:  0,left:9),
          child:bookliestitem(book: books[index]) ,
        ) ;
      },),
    );
  }
}