import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/Neawsedbooks/newsedbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/featerCubit/featur_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/widget/bestsellerlist.dart';
import 'package:bookly_app/features/home/presentation/widget/bookeslist.dart';
import 'package:bookly_app/features/home/presentation/widget/homeappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'bestsellertext.dart';


class homeviewbody extends StatefulWidget {
  const homeviewbody({super.key});

  @override
  State<homeviewbody> createState() => _homeviewbodyState();
}

class _homeviewbodyState extends State<homeviewbody> {
  late List<BookModel> bookslist;

  late List<BookModel> bestsellerBooks;

  bool flag1 = true;
  bool flage2=true;
  @override
  void initState() {
        BlocProvider.of<FeaturBookCubit>(context).getfeaturBook();
        BlocProvider.of<NewsedbooksCubit>(context).getNewstBook();

        super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              homeappbar(),
              BlocConsumer<FeaturBookCubit, FeaturBookState>(
                listener: (context, state) {
                  if (state is FeaturBookloding) {
                    flag1 = true;
                  
                  }
                  if (state is FeaturBookfailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errorMassage)));
                        flag1=false;
                  }
                  if (state is FeaturBooksuccsed) {
                    bookslist = BlocProvider.of<FeaturBookCubit>(context).booklist;
                    flag1 =false;
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    width:MediaQuery.of(context).size.width,
                            height:MediaQuery.of(context).size.height*.3 ,
                    child: ModalProgressHUD(
                      
                        inAsyncCall: flag1,
                         child:flag1? SizedBox(height: 100, width: MediaQuery.of(context).size.width,):
                          bookeslist(books: bookslist) ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const bestsellertext(),
            ],
          ),
        ),
        
        SliverFillRemaining(
          fillOverscroll: true,
          child: BlocConsumer<NewsedbooksCubit, NewsedbooksState>(
            listener: (context, state) {
                if (state is Newsedbooksloding) {
                 
                   flage2 = true;
                  }
                  if (state is Newsedbooksfailer) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errorMassage)));
                        flage2=false;
                  }
                  if (state is Newsedbookssuccsed) {
                  bestsellerBooks   = state.books;
                    flage2 =false;
                   
                  }
                   },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: flage2,
                child: flage2 ?const SizedBox(
                  height:200 ,
                ):bestsellerlist(books: bestsellerBooks)
                 );
            },
          ),
        )
      ],
    );
  }
}
