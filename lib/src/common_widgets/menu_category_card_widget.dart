import 'package:flutter/material.dart';

import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';


import '../features/menu/domain/category_model.dart';
import '../shared/shared_values.dart';
import '../shared/theme.dart';

class MenuCategoryCardWidget extends StatelessWidget {
  const MenuCategoryCardWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRoute.detailMenu.name);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.42,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.42,
                child: Image.network(
                  '$baseUrl${category.attributes!.categoryImage!.data!.attributes!.url}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.7),
                  ],
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
                    category.attributes!.title.toString(),
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  gapH4,
                  Text(
                    category.attributes!.subtitle.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: whiteTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.42,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.42,
              child: Image.asset(
                'assets/img_category_one.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8.0, left: 7.0),
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sepak Bola',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                gapH4,
                Text(
                  'Aktual dan terkini seputar sepak bola',
                  overflow: TextOverflow.ellipsis,
                  style: whiteTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}