import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/widget/bestselleritem.dart';
import 'package:flutter/material.dart';

class searchlist extends StatelessWidget {
  const searchlist({super.key, required this.books});
 final List <BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      padding:const EdgeInsets.all(0),
      itemBuilder: (context, index) {
      return  itemwithdatails(book:  books[index],);
    },);
  }
}