import 'dart:convert';

import 'package:flutter_tasker/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late final SharedPreferences instance;

  static Future<SharedPreferences> init() async =>
      instance = await SharedPreferences.getInstance();

  // Getter
  static bool? getBool(String key) => instance.getBool(key);

// Setter
  static Future<bool> setBool(String key, bool value) =>
      instance.setBool(key, value);

// More abstraction
  static const kAccessToken = 'token';
  static const kUserData = 'user';

  static Future<bool> setAccessToken(String value) =>
      instance.setString(kAccessToken, value);

  static String? getAccessToken() => instance.getString(kAccessToken);

  static Future<bool> setUser(Map<String, dynamic> user) =>
      instance.setString(kUserData, jsonEncode(user));

  static UserModel getUser() {
    String? userPref = instance.getString(kUserData);
    Map<String, dynamic> userMap =
        jsonDecode(userPref!) as Map<String, dynamic>;
    return UserModel.fromJson(userMap);
  }
}
