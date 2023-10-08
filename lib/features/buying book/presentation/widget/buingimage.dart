
import 'package:flutter/material.dart';
class buyingimag extends StatelessWidget {
  const buyingimag({
    super.key, required this.image,
  });

final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.35,
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: NetworkImage(image),
            fit: BoxFit.fill
                     )
          ),
          
        ),
      ),
    );
  }
}