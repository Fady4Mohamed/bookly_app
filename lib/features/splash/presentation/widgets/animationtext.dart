
import 'package:flutter/cupertino.dart';

class animationtext extends StatelessWidget {
  const animationtext({
    super.key,
    required this.slidAnimation,
  });

  final Animation<Offset> slidAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidAnimation,
          child:const Text(
            'have knowledge for free',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
