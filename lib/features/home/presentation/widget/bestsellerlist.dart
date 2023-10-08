import 'package:bookly_app/features/home/presentation/widget/bestselleritem.dart';
import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';

class bestsellerlist
 extends StatelessWidget {
  const bestsellerlist
  ({super.key, required this.books});
final List <BookModel> books ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.486 ,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        physics: const NeverScrollableScrollPhysics(),
        padding:const EdgeInsets.all(0),
        itemBuilder: (context, index) {
        return itemwithdatails(book: books[index],);
      },),
    );
  }
}