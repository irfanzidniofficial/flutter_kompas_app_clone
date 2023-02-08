import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_text_button.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/image_profile_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/item_edit_profile_widget.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                gapH32,
                const ImageProfileWidget(
                  sizedImage: 85,
                ),
                gapH24,
                Text(
                  'John Doe',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
                gapH24,
                Text(
                  'KG Media ID',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                gapH12,
                Text(
                  'johndoe@gmail.com',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                gapH48,
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 17,
            color: lightGreyColor,
          ),
          gapH20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomTextButton(
              text: 'Ubah Profil',
              style: blueTextColor.copyWith(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          gapH20,
          Container(
            width: double.infinity,
            height: 17,
            color: lightGreyColor,
          ),
          ItemEditProfileWidget(
            subtitles: 'Pilih Gender',
            title: 'Gender',
          ),
        ],
      ),
    );
  }
}
