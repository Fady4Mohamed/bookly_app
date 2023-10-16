import 'package:bookly_app/features/home/presentation/manger/searchalgorethm/searchalgo.dart';
import 'package:bookly_app/features/home/presentation/widget/searchlist.dart';
import 'package:flutter/material.dart';
import '../../../../core/unite/widget/localtextfeild.dart';

class Searchview extends StatefulWidget {
  Searchview({
    super.key,
  });

  @override
  State<Searchview> createState() => _SearchviewState();
}

class _SearchviewState extends State<Searchview> {
  String bookName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: localtextfeild(
              hint: 'search here',
              onChanged: (p0)  {
               
               setState(() {
                  bookName = p0;
               });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          
           
          Expanded(
                child: searchlist(
                books:Search.searchAlgorethem(bookName,context) ,
                            ),
              ) 
           
         
        ],
      ),
    );
  }
}
