import 'package:bookly_app/core/unite/SingleTones.dart';
import 'package:bookly_app/features/home/data/rebo/homerebo.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/Neawsedbooks/newsedbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/featerCubit/featur_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/splash/presentation/views/splashview.dart';

void main() {
  get();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
       providers: [
          BlocProvider(
            create: (context) => FeaturBookCubit(getit.get<homerebo>()),
          ),
          BlocProvider(
            create: (context) => NewsedbooksCubit(getit.get<homerebo>()),
          ),
         
        ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100B20),
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme),
        ),
        home: const solashview(),
      ),
    );
  }
}
