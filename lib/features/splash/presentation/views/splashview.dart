import 'package:bookly_app/features/home/presentation/view/homeview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/unite/assetsclass/AssetsImage.dart';
import '../widgets/animationtext.dart';

class solashview extends StatefulWidget {
  const solashview({super.key});

  @override
  State<solashview> createState() => _solashviewState();
}

class _solashviewState extends State<solashview>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidAnimation;

  @override
  void initState() {
    super.initState();
    slidanimation();

     navigetoToHome();
  }

  void navigetoToHome() {
    
    Future.delayed(const Duration(seconds: 2),(){
    Get.to(()=>const homeview(),transition:Transition.downToUp,duration:const Duration(milliseconds: 300)) ;}
    );
  }

  void slidanimation() {
     animationController =
        AnimationController(vsync: this, duration:const Duration(seconds: 2));
    
    slidAnimation = Tween<Offset>(begin:const Offset(0, 2), end:const Offset(0, 0))
        .animate(animationController);
        animationController.forward();
        
  }
 @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AssetsImage.logo,
            width: 300,
          ),
          animationtext(slidAnimation: slidAnimation)
        ],
      ),
    );
  }
}
