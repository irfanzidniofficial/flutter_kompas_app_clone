import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/authentication/domain/sign_in_form_model.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/domain/sign_up_form_model.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/domain/user_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
          jsonDecode(res.body),
        );

        return user;
      } else {
        throw jsonDecode(res.body)['error']['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> login(SignInFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrlApi/auth/local'),
        body: data.toJson(),
      );

      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(
          jsonDecode(res.body),
        );
        // String tempEmail = jsonDecode(res.body)['user']['email'];
        // String tempPassword = jsonDecode(res.body)['user']['password'];

        // final prefs = await SharedPreferences.getInstance();

        // await prefs.setString('identifier', tempEmail);
        // await prefs.setString('password', tempPassword);

        await storeCredentialToStorage(user);
        return user;
      } else {
        throw jsonDecode(res.body)['error']['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> storeCredentialToStorage(UserModel user) async {
    try {
      const storage = FlutterSecureStorage();

      await storage.write(key: 'token', value: user.token);
      await storage.write(key: 'email', value: user.email);
      await storage.write(key: 'password', value: user.password);
    } catch (e, st) {
      print(e.toString());
      print(st.toString());
      rethrow;
    }
  }

  Future<SignInFormModel> getCredentialFromLocal() async {
    try {
      const storage = FlutterSecureStorage();
      Map<String, String> values = await storage.readAll();

      if (values['2'] == null || values['3'] == null) {
        throw 'unauthenticated';
      } else {
        final SignInFormModel data = SignInFormModel(
          email: values['2'],
          password: values['3'],
        );

        return data;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getToken() async {
    String token = '';

    const storage = FlutterSecureStorage();
    String? value = await storage.read(key: 'jwt');

    if (value != null) {
      token = 'Bearer $value';
    }

    return token;
  }

  Future<void> clearLocalStorage() async {
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
  }
}
