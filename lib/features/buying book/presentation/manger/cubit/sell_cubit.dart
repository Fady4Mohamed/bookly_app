import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/data/rebo/homerebo.dart';

part 'sell_state.dart';

class SellCubit extends Cubit<SellState> {
  SellCubit({required this.homeerebo}) : super(SellInitial());

   
 final homerebo homeerebo;


 Future<void> getsimilertBook() async{
  emit(Sellloding());
    var data=await  homeerebo.fetchNewstBook();
   data.fold((failer) 
   {
    emit(Sellfailer(failer.errMessage));
   }
   , (books)
   {
    emit(Sellsuccsed(books));

   });
 }
}
