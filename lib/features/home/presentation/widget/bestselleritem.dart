
import 'package:bookly_app/features/buying%20book/presentation/view/buyingview.dart';
import 'package:flutter/material.dart';
import '../../data/models/book_model/book_model.dart';
import 'bestsellerimage.dart';
import 'bestsellerinformation.dart';

class itemwithdatails extends StatelessWidget {
  const itemwithdatails({super.key, required this.book});
 final BookModel book ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 10.7),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) {
            return buyingview(book: book,);
          },));
        },
        child: Row(
          children: [
            bestsellerimage(image: book.volumeInfo!.imageLinks!.thumbnail!,),
            const SizedBox(width: 20,),
            bestsellerinformation(book: book,)
          ],
        ),
      ),
    );
  }
}
