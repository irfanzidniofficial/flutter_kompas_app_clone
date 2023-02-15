import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/shared/theme.dart';
import 'package:go_router/go_router.dart';

import '../routing/app_router.dart';

class MenuCategoryCardWidget extends StatelessWidget {
  const MenuCategoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRoute.detailMenu.name);
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: SizedBox(
              child: Image.asset(
                'assets/img_category_one.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 8.0,
            left: 7.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tren',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                gapH4,
                Text(
                  'Berita Terpopuler',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
