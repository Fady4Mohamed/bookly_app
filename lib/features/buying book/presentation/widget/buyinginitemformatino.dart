import 'package:bookly_app/features/buying%20book/presentation/widget/buingimage.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class buyingiteminformation extends StatelessWidget {
  const buyingiteminformation({super.key, required this.Book});
  final BookModel Book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buyingimag(image: Book.volumeInfo!.imageLinks!.thumbnail!),
       const SizedBox(
          height: 40,
        ),
        Text(
          Book.volumeInfo!.title!,
          style:const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
           maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
       const SizedBox(
          height: 10,
        ),
        Text(
          Book.volumeInfo!.authors![0],
          style: TextStyle(fontSize: 18),
          
        ),
       const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(
              Icons.star,
              color: Colors.amber,
            ),
           const SizedBox(
              width: 6,
            ),
            Text(
                Book.volumeInfo!.averageRating != null
                    ? '(${Book.volumeInfo!.averageRating.toString()})'
                    : '0',
                style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
           const SizedBox(
              width: 6,
            ),
            Text(Book.volumeInfo!.ratingsCount != null
                ? '(${Book.volumeInfo!.ratingsCount.toString()})'
                : '(0)'),
          ],
        ),
      ],
    );
  }
}
