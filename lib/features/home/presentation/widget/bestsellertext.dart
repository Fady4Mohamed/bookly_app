import 'package:flutter/material.dart';


class bestsellertext extends StatelessWidget {
  const bestsellertext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
       SizedBox(
         width: 20,
       ),
        Text('The Newest ',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 18,
        fontWeight: FontWeight.w600,
        ),
        ),
      ],
    );
  }
}