// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class ImageProfileWidget extends StatelessWidget {
  final double sizedImage;
  const ImageProfileWidget({
    Key? key,
    required this.sizedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizedImage,
      height: sizedImage,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: purpleColor,
      ),
      child: Center(
        child: Text(
          'I',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
