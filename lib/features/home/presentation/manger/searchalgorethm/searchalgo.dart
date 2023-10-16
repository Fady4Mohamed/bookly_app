import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/featerCubit/featur_book_cubit.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search{




 static List<BookModel> searchAlgorethem(String bookName,BuildContext context){

 List<BookModel> books= BlocProvider.of<FeaturBookCubit>(context).booklist;
  List<BookModel> searhedbooks=[];
  for(int i=0;i<books.length;i++){
    if(books[i].volumeInfo!.title!.contains(bookName)){
      searhedbooks.add(books[i]);
    }

  }
 return searhedbooks;
  }
}