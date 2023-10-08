import 'package:bookly_app/core/unite/apiserves.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failre.dart';

class homerebo{
 final Apiserves _apiserves;

  homerebo(this._apiserves);

Future<Either<ServerFailure,List<BookModel>>> fetchNewstBook() async{
  try {
      var data = await _apiserves.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        if (BookModel.fromJson(item).volumeInfo!.imageLinks != null) {
           books.add(BookModel.fromJson(item));
        }        
      }
         int x =books.length;
   print( 'the length of n  $x ');

      return right(books);
    }  catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }


}
Future<Either<ServerFailure,List<BookModel>>> fetchfeaturedBook() async {
  try{
    var data = await _apiserves.get(
          endpoint:
              'volumes?Filtering=free-ebooks&q=computer science');
      List<BookModel> books = [];
    for (var item in data['items']) {
        if (BookModel.fromJson(item).volumeInfo!.imageLinks != null) {
           books.add(BookModel.fromJson(item));
        }        
      }
      int x =books.length;
   print( 'the length of d $x ');

      return right(books);
    }  catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
}

}