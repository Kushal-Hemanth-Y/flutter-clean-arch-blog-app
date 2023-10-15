import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_constant.dart';
import 'api_endpoint_urls.dart';

class ApiClient {
  getTags() async {
    final dio = Dio();
    try {
      // 404
      var response = await dio.get(ApiConstant.mainUrl + ApiEndPointUrls.tags);
      // debugPrint(response.data);
      debugPrint('kushal this is tapped');
      debugPrint(response.statusCode.toString());
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
    }
  }
}
