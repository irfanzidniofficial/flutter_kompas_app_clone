import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_form_field_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_text_button.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/domain/sign_in_form_model.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:flutter_kompas_app_clone/src/shared/custom_alert_dialog.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool validate() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            showCustomSnackBar(context, state.e);
          }

          if (state is AuthSuccess) {
            context.pushReplacementNamed(AppRoute.home.name);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            children: [
              gapH64,
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Akses ',
                      style: blackTextStyle.copyWith(
                        fontSize: 24.0,
                        fontWeight: bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Fitur Lengkap',
                          style: blackTextStyle.copyWith(
                            fontSize: 24.0,
                            color: whiteColor,
                            backgroundColor: orangeColor,
                            fontWeight: bold,
                          ),
                        )
                      ])),
              Text(
                'dengan akunmu',
                style: blackTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              gapH64,
              CustomFormFieldWidget(
                labelText: 'Email',
                controller: emailController,
              ),
              gapH32,
              CustomFormFieldWidget(
                labelText: 'Pasword',
                controller: passwordController,
                isObsecure: true,
              ),
              gapH64,
              PrimaryButton(
                text: 'Login',
                onPressed: () {
                  if (validate()) {
                    context.read<AuthBloc>().add(
                          AuthLogin(
                            SignInFormModel(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          ),
                        );
                  } else {
                    showCustomSnackBar(context, 'Please fill all fields');
                  }
                },
              ),
              gapH32,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextButton(
                    text: 'Tidak punya KG Media ID?',
                    onPressed: () {
                      context.pushNamed(AppRoute.signUp.name);
                    },
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  gapH16,
                  Text(
                    'atau',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  gapH12,
                  CustomTextButton(
                    text: 'Nanti saja',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    onPressed: () {
                      context.pushNamed(AppRoute.home.name);
                    },
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
