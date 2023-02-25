import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_form_field_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/domain/sign_up_form_model.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:flutter_kompas_app_clone/src/shared/custom_alert_dialog.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullNameController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final addressController = TextEditingController(text: '');
  final phoneController = TextEditingController(text: '');

  bool validate() {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        fullNameController.text.isEmpty ||
        addressController.text.isEmpty ||
        phoneController.text.isEmpty) {
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
              Text(
                'KG Media ID',
                style: blackTextStyle.copyWith(
                  fontSize: 24.0,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              gapH16,
              Text(
                'Daftar dengan KG Media ID untuk menggunakan\nlayanan-layanan dari KG Media',
                style: blackTextStyle.copyWith(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
              gapH64,
              CustomFormFieldWidget(
                labelText: 'Nama Lengkap',
                controller: fullNameController,
              ),
              gapH32,
              CustomFormFieldWidget(
                labelText: 'Email',
                controller: emailController,
              ),
              gapH32,
              CustomFormFieldWidget(
                labelText: 'Nomor Handphone',
                controller: phoneController,
              ),
              gapH32,
              CustomFormFieldWidget(
                labelText: 'Alamat',
                controller: addressController,
              ),
              gapH32,
              CustomFormFieldWidget(
                labelText: 'Passworsd',
                controller: passwordController,
                isObsecure: true,
              ),
              gapH64,
              PrimaryButton(
                text: 'Daftar',
                onPressed: () {
                  if (validate()) {
                    context.read<AuthBloc>().add(
                          AuthRegister(
                            SignUpFormModel(
                              email: emailController.text,
                              username: emailController.text,
                              password: passwordController.text,
                              passwordConfirm: passwordController.text,
                              name: fullNameController.text,
                              address: addressController.text,
                              numberPhone: phoneController.text,
                            ),
                          ),
                        );
                  } else {
                    showCustomSnackBar(context, 'Please fill all fields');
                  }
                },
              ),
              gapH24,
              RichText(
                text: TextSpan(
                  text:
                      'Dengan menekan tombol “Lanjutkan”, kamu menyetujui bahwa data dan informasi KG Media ID milikmu akan digunakan untuk memberikan layanan sesuai ',
                  style: blackTextStyle,
                  children: [
                    TextSpan(
                      text: 'Kebijakan',
                      style: blueTextStyle,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              gapH40,
            ],
          );
        },
      ),
    );
  }
}
