import 'package:dio/dio.dart';
import 'package:flutter_tasker/core/utils/api_service.dart';

class AuthRepo {
  static final AuthRepo _instance = AuthRepo._internal(ApiService());

  factory AuthRepo() => _instance;

  AuthRepo._internal(this._apiService);

  final ApiService _apiService;

  register(Map<String, dynamic> userData) async {
    FormData formData = FormData.fromMap(userData);
    try {
      await _apiService
          .post(
            endPoin: 'Users/register',
            data: formData,
            options: Options(
              contentType: Headers.multipartFormDataContentType,
            ),
          )
          .then((value) => print(value['name']));
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
