import 'package:bookly_app/core/unite/assetsclass/AssetsImage.dart';
import 'package:bookly_app/features/home/presentation/view/serchview.dart';
import 'package:flutter/material.dart';

class homeappbar
 extends StatelessWidget {
  const homeappbar
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      child: Row(
        children: [
          
          Image.asset(AssetsImage.logo,height: 25,),
          const Spacer(
            flex: 1,
          ),
         GestureDetector(
          child: Image.asset(AssetsImage.searchicon,height: 35,),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Searchview();
            },));
          },
         )
        ],
      ),
    );
  }
}