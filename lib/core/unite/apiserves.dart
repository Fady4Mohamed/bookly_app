import 'package:dio/dio.dart';
class Apiserves
{
  final String basURL='https://www.googleapis.com/books/v1/';
  final Dio dio;
  Apiserves(this.dio);
  Future<Map<String,dynamic>>get({required String endpoint}) async {
  var response = await Dio().get('$basURL$endpoint');
 return response.data;
  }
  
  }