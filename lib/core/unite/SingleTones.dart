import 'package:bookly_app/core/unite/apiserves.dart';
import 'package:bookly_app/features/home/data/rebo/homerebo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit=GetIt.asNewInstance();
void get(){
getit.registerSingleton<homerebo>(homerebo(Apiserves(Dio(),),),);




}