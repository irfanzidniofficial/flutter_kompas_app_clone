import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/data/service/auth_service.dart';

import 'package:flutter_kompas_app_clone/src/features/authentication/domain/user_model.dart';

import '../../domain/sign_in_form_model.dart';
import '../../domain/sign_up_form_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is AuthRegister) {
        try {
          emit(AuthLoading());
          final user = await AuthService().register(event.data);

          emit(AuthSuccess(user));
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthLogin) {
        try {
          emit(AuthLoading());
          final user = await AuthService().login(event.data);

          emit(AuthSuccess(user));
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthGetCurrentUser) {
        try {
          emit(AuthLoading());

          final SignInFormModel data =
              await AuthService().getCredentialFromLocal();
          final UserModel user = await AuthService().login(data);

          emit(AuthSuccess(user));
        } catch (e, st) {
          print(st.toString());

          print(e.toString());

          emit(AuthFailed(e.toString()));
        }
      }
    });
  }
}
