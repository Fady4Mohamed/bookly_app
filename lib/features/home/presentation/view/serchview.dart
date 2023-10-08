import 'package:bookly_app/features/home/presentation/widget/searchlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/unite/widget/localtextfeild.dart';
import '../manger/cubit/featerCubit/featur_book_cubit.dart';

class Searchview extends StatelessWidget {
  Searchview({super.key, });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:  20.0),
                child: localtextfeild(
                  hint: 'search here',
                  onChanged: (p0) {
                   
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             Expanded(child: searchlist(books: BlocProvider.of<FeaturBookCubit>(context).booklist,)),
            ],
          ),
            );
          }
      
  }

