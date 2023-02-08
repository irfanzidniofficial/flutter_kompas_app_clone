// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_kompas_app_clone/src/common_widgets/custom_text_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class ItemEditProfileWidget extends StatelessWidget {
  final String title;
  final String subtitles;
  const ItemEditProfileWidget({
    Key? key,
    required this.title,
    required this.subtitles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: greyTitleTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          Text(
            subtitles,
            style: greySubtitleTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          CustomTextButton(
            text: 'Lengkapi Profil',
            style: blueTextColor.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }
}
