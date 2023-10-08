import 'package:flutter/material.dart';




class bestsellerimage extends StatelessWidget {
  const bestsellerimage({
    super.key, required this.image,
  });
 final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image:NetworkImage(image),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
