import 'package:bookly_app/features/buying%20book/presentation/manger/cubit/sell_cubit.dart';
import 'package:bookly_app/features/buying%20book/presentation/widget/buyingsuggestlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../home/data/models/book_model/book_model.dart';

class buyingsuggest extends StatefulWidget {
  const buyingsuggest({super.key, required this.titel});
final String titel;

  @override
  State<buyingsuggest> createState() => _buyingsuggestState();
}

class _buyingsuggestState extends State<buyingsuggest> {

 bool isloding=false;
  List<BookModel> books =[];
@override
  void initState() {
    
    BlocProvider.of<SellCubit>(context).getsimilertBook();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<SellCubit, SellState>(
      listener: (context, state) {
       if (state is Sellloding) {
                    isloding = true;
                  
                  }
                  if (state is Sellfailer) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errorMassage)));
                        isloding=false;
                  }
                  if (state is Sellsuccsed) {
                    books = state.books;
                    isloding =false;
                  }
      },
      builder: (context, state) {
        return Column(
    
          children: [
           const Row(
              children: [
                SizedBox(width: 20,),
                Text('You can also like',style: TextStyle(fontSize: 16),),
              ],
            ),
           const SizedBox(
              height: 20,
            ),
           SizedBox(
             height: MediaQuery.of(context).size.height * .14,
             child: ModalProgressHUD(
              inAsyncCall: isloding,
              child: isloding?const SizedBox(): buyingsuggestlist( titel: widget.titel, books:books ,),),
           ),
          ],
        );
      },
    );
  }
}