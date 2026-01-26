import 'package:dio/dio.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';



class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
       addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }
  static void addDioHeaders(){
    dio?.options.headers ={
      "Accept": "application/json",
      
      "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzY5NDQwNjg5LCJleHAiOjE3Njk1MjcwODksIm5iZiI6MTc2OTQ0MDY4OSwianRpIjoidklBVkxGMVhDTndQOHk5RyIsInN1YiI6IjM0MCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.8VrpnWzH642Jg3qJGgOuxbsZZ_3YsYodolOMU8fmqnw"
      

    };

  }
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}