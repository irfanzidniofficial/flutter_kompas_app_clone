import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
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
                          'Bola',
                          style: orangeTextColor,
                        ),
                        gapH4,
                        Text(
                          'PSIS Vc Persib: Tanpa dua Pilar Inti, Luis Milla Punya dbakbk djadkjab ajkafka',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                  gapW20,
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
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
