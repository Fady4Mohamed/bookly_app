import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class bestsellerinformation extends StatelessWidget {
  const bestsellerinformation({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .57,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.volumeInfo!.title!,
            style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(book.volumeInfo!.authors![0]),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Text(
                  book.saleInfo!.listPrice != null
                      ? '${(book.saleInfo!.listPrice!.amount!)}'
                      : 'Not for (E)sele',
                  style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              const Spacer(
                flex: 1,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                  book.volumeInfo!.averageRating != null
                      ? '(${book.volumeInfo!.averageRating.toString()})'
                      : '0',
                  style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(
                width: 6,
              ),
              Text(book.volumeInfo!.ratingsCount != null
                  ? '(${book.volumeInfo!.ratingsCount.toString()})'
                  : '(0)'),
            ],
          )
        ],
      ),
    );
  }
}
