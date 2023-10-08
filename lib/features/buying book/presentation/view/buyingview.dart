import 'package:bookly_app/features/buying%20book/presentation/manger/cubit/sell_cubit.dart';
import 'package:bookly_app/features/buying%20book/presentation/widget/buyingappbar.dart';
import 'package:bookly_app/features/buying%20book/presentation/widget/buyingbutton.dart';
import 'package:bookly_app/features/buying%20book/presentation/widget/buyinginitemformatino.dart';
import 'package:bookly_app/features/buying%20book/presentation/widget/buyingsugest.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/rebo/homerebo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/unite/SingleTones.dart';


class buyingview extends StatelessWidget {
  const buyingview({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SellCubit(homeerebo:getit.get<homerebo>()),
      child: Scaffold(
        body: Column(
          children: [
            buyingappbar(url: book.volumeInfo!.previewLink!),
            buyingiteminformation(Book: book),
           const SizedBox(
              height: 28,
            ),
            buyingbutton(book: book),
           const SizedBox(
              height: 28,
            ),
            buyingsuggest(titel: book.volumeInfo!.title!),
          ],
        ),
      ),
    );
  }
}
