import 'package:dio/dio.dart';

import 'shared_prefrences.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal(Dio());

  final _baseUrl = 'http://5.189.132.217/';

  final Dio _dio;

  factory ApiService() => _instance;

  ApiService._internal(this._dio);

  static final headers = {
    'Authorization': 'Bearer ${SharedPrefs.getAccessToken() ?? ''}'
  };

  final _postAndPutOptions = Options(
    headers: headers,
    contentType: Headers.multipartFormDataContentType,
  );
  final _getOptions = Options(
    headers: headers,
  );

  Future<dynamic> get({required String endPoin}) async {
    Response response = await _dio.get('$_baseUrl$endPoin', options: _getOptions);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoin, Object? data, Options? options}) async {
    var response = await _dio.post('$_baseUrl$endPoin',
        data: data, options: options ?? _postAndPutOptions);
    return response.data;
  }

  Future<void> put({
    required String endPoint,
    Object? data,
  }) async {
    await _dio.put('$_baseUrl$endPoint', data: data, options: _postAndPutOptions);
  }
}
