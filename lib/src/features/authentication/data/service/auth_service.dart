import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/authentication/domain/sign_up_form_model.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/domain/user_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<UserModel> register(SignUpFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrlApi/auth/local/register'),
        body: data.toJson(),
      );

      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(
          jsonDecode(res.body)['user'],
        );

        return user;
      } else {
        throw jsonDecode(res.body)['error']['message'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
