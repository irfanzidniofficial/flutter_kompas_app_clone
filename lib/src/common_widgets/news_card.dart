// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.news,
    this.onTap,
    this.onPressedMore,
  }) : super(key: key);

  final NewsModel news;
  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            news.attributes!.category!.data!.attributes!.title
                                .toString(),
                            style: orangeTextStyle,
                          ),
                          gapH4,
                          Text(
                            news.attributes!.subtitle.toString(),
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    gapW20,
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              '$baseUrl${news.attributes!.newsImage!.data!.attributes!.url.toString()}',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 119,
                        height: 88,
                      ),
                    )
                  ],
                ),
                gapH20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '23 Jan 2023, 17: 40',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      size: 24,
                      color: greyColor,
                    )
                  ],
                ),
                gapH20,
              ],
            ),
          ),
        ),
        Divider(
          color: lightGreyColor,
          thickness: 1,
        )
      ],
    );
  }
}
