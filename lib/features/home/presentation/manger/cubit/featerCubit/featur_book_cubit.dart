import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/rebo/homerebo.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/book_model/book_model.dart';

part 'featur_book_state.dart';

class FeaturBookCubit extends Cubit<FeaturBookState> {
  FeaturBookCubit(this._homerebo) : super(FeaturBookInitial());

final homerebo _homerebo;
final List <BookModel> booklist =[];

 Future<void> getfeaturBook() async{
  print('object');
  emit(FeaturBookloding());
   print('lodin');
    var data=await  _homerebo.fetchfeaturedBook();
   data.fold((failer) 
   {
    emit(FeaturBookfailure(failer.errMessage));
    print('erro');
   }
   , (books)
   {
    booklist.addAll(books);
    emit(FeaturBooksuccsed());
     print('succed');

   });
 }
}
