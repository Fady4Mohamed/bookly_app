import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class buyingbutton extends StatelessWidget {
  const buyingbutton({super.key, required this.book});
 final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*.28,
              child: AspectRatio(
                aspectRatio: 4/1.5,
                child: Center(child: Text(book.saleInfo!.listPrice != null? '${(book.saleInfo!.listPrice!.amount!.toString())}':'Not for (E)sele',style: TextStyle(color: Colors.black),))),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
             decoration:const BoxDecoration(
              color: Color.fromARGB(255, 69, 14, 61),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
            ),
            child: SizedBox(
              width:MediaQuery.of(context).size.width*.28 ,
              child:const AspectRatio(
                aspectRatio:4/1.5 ,
                child: Center(child: Text('Free preview'))),
            ),),
        )
      ],
    );
  }
}
