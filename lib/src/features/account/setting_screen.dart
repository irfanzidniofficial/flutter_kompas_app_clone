import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_text_button.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/image_profile_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/setting_title_widget.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pengaturan',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SettingTitleWidget(
            title: 'KG Media ID',
          ),
          gapH20,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              children: [
                const ImageProfileWidget(
                  sizedImage: 55,
                ),
                gapW20,
                GestureDetector(
                  onTap: () {
                    context.go('/profile');
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, John Doe',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      gapH4,
                      Text(
                        'johndoe@gmail.com',
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          gapH20,
          const SettingTitleWidget(
            title: 'Aktivitasmu',
          ),
          gapH16,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: CustomTextButton(
              text: 'Baca Nanti',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          gapH16,
          const SettingTitleWidget(
            title: 'Pengaturan',
          ),
          gapH16,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: CustomTextButton(
              text: 'Pengaturan Minat Untukmu',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          gapH16,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: CustomTextButton(
              text: 'Baca Nanti',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          gapH16,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: CustomTextButton(
              text: 'Baca Nanti',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          gapH16,
          const SettingTitleWidget(
            title: 'Bantuan dan Lainnya',
          ),
        ],
      ),
    );
  }
}
