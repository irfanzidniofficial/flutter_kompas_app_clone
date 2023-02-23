import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_form_field_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/policy_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/shared/theme.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          gapH24,
          Text(
            'KG Media ID',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Nama Lengkap',
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Email',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Nomor Handphone',
            isObsecure: true,
          ),
          gapH24,
          const CustomFormFieldWidget(
            labelText: 'Alamat',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Password',
            isObsecure: true,
          ),
          gapH48,
          const PrimaryButton(text: 'Simpan'),
          gapH24,
          const PolicyWidget(
            type: "Simpan",
          ),
          gapH48,
        ],
      ),
    );
  }
}
