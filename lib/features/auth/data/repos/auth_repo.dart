import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tasker/core/errors/failures.dart';
import 'package:flutter_tasker/core/utils/api_service.dart';
import 'package:flutter_tasker/core/utils/shared_prefrences.dart';
import 'package:flutter_tasker/features/auth/data/models/user_model.dart';

import '../models/auth_model.dart';

class AuthRepo {
  static final AuthRepo _instance = AuthRepo._internal(ApiService());

  factory AuthRepo() => _instance;

  AuthRepo._internal(this._apiService);

  final ApiService _apiService;

  Future<Either<Failure, UserModel>> register(
      Map<String, dynamic> userData) async {
    FormData formData = FormData.fromMap(userData);
    try {
      Map<String, dynamic> data = await _apiService.post(
        endPoin: 'Users/register',
        data: formData,
        options: Options(
          contentType: Headers.multipartFormDataContentType,
        ),
      );
      return Right(UserModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, AuthModel>> login(String name, String password) async {
    var data = {
      'name': name,
      'password': password,
    };

    try {
      Map<String, dynamic> result = await _apiService.post(
        endPoin: 'Users/login',
        data: jsonEncode(data),
        options: Options(contentType: Headers.jsonContentType),
      );

      AuthModel auth = AuthModel.fromJson(result);

      await SharedPrefs.setUser(auth.userModel!.toJson());
      await SharedPrefs.setAccessToken(auth.token!);
      return right(auth);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
