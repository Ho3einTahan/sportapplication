import 'dart:convert';

import 'package:sport_application/core/ApiService.dart';
import 'package:sport_application/core/JwtServices.dart';
import 'package:sport_application/core/SpServices.dart';
import 'models/LoginData.dart';

class Authentication {
  ApiService apiService = new ApiService();
  JwtService jwtService = new JwtService();
  SpService spService = new SpService();

  Future<bool> login(username, password) async {
    final response = await apiService
        .req_post("token", {'username': username, 'password': password});
    print(response);
    if (response.statusCode == 200 || response.statusCode == 201) {
      LoginData loginData =
          LoginData.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      print(loginData);
      jwtService.set_token(loginData.access);
      jwtService.set_refresh_token(loginData.refresh);
      spService.set_bool("login", true);
      return true;
    } else {
      print("false");
      spService.set_bool("login", false);
      return false;
    }
  }
}
