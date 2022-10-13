import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper
{
  static late Dio dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://dev.alshorjah.com/api/v2',
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status){return status! < 500;}
      ),
    );
  }
  static Future<Response> getData({
    required String url,
    Map<String,dynamic>? query,
    String lang = 'en',
    String? token,
  }) async
  {
    dio.options.headers = {
      'Authorization' : 'Bearer $token',
      'Accept':'application/json',
    };
    return await dio.get(
      url,
      queryParameters: query??null,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String,dynamic>? query,
    Map<String,dynamic>? data,
    String lang = 'en',
    String? token,
  })
  async {

    dio.options.headers = {
      'Content-Type':'application/json',
      'Accept':'application/json',
      'Authorization' : 'Bearer $token',
    };
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String,dynamic>? query,
    required Map<String,dynamic> data,
    String lang = 'en',
    String? token,
  })
  async {

    dio.options.headers = {
      'Content-Type':'application/json',
      'lang' : lang,
      'Authorization' : token,
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

}
