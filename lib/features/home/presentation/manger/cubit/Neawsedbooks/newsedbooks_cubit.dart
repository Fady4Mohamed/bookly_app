import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/book_model/book_model.dart';
import '../../../../data/rebo/homerebo.dart';

part 'newsedbooks_state.dart';

class NewsedbooksCubit extends Cubit<NewsedbooksState> {
  NewsedbooksCubit(this._homerebo) : super(NewsedbooksInitial());
  
 final homerebo _homerebo;


 Future<void> getNewstBook() async{
  emit(Newsedbooksloding());
    var data=await  _homerebo.fetchNewstBook();
    emit(Newsedbooksloding());
   data.fold((failer) 
   {
    emit(Newsedbooksfailer(failer.errMessage));
   }
   , (books)
   {
    emit(Newsedbookssuccsed(books));

   });
 }
}
