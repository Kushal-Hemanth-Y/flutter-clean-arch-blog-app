import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_constant.dart';
import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(
      baseUrl: ApiConstant.mainUrl,
    );
    dio = Dio(baseOptions);
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ));
  }
  Future<Response> getRequest({required String path}) async {
    try {
      var response = await dio.get(path);
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiExceptions(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiExceptions(message: e.message);
      }
    }
  }

//POST REQUEST
  Future<Response> postRequest(
      {required String path, required dynamic body}) async {
    // Map body = {"title": "newdellbag11", "slug": "newdellbag11"};
    final options = Options(headers: {
      "Authorization": "Bearer 224|vIqQ0FAfwnTAq8FKdC7ftNixP5fNrrE7nQItbfxP"
    });
    try {
      var response = await dio.post(path, data: body, options: options);
      log(response.toString());
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiExceptions(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiExceptions(message: e.message);
      }
    }
  }
}
