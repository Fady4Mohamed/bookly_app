import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class buyingappbar
 extends StatelessWidget {
  const buyingappbar
  ({super.key, required this.url});
 final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:const FaIcon(FontAwesomeIcons.xmark,size: 24,)),
         const Spacer(
            flex: 1,
          ),
         GestureDetector(
          child:const FaIcon(FontAwesomeIcons.cartShopping,size: 24,),
          onTap: () async{
           // try {
 await  launchUrl(Uri.parse(url));
// }  catch (e) {
//   print(e.toString());
//   ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('ther was an error')));
// }
          },
         )
        ],
      ),
    );
  }
}