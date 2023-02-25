import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.news,
    this.onTap,
    this.onPressedMore,
  });

  final NewsModel news;
  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                          news.category.toString(),
                          style: orangeTextStyle,
                        ),
                        gapH4,
                        Text(
                          news.title.toString(),
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
                            '$baseUrl${news.newsImage}',
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
        Divider(
          color: lightGreyColor,
          thickness: 1,
        )
      ],
    );
  }
}
