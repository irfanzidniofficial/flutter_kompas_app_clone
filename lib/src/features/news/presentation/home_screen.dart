import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/news_card.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/heading_news_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/ic_kompas_title.png',
          fit: BoxFit.cover,
          height: 30,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/search');
            },
            icon: const Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/profile');
            },
            icon: const Icon(
              Icons.account_circle,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          gapH32,
          Text(
            'Editorial Top Stories',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          gapH20,
          HeadingNewsWidget(
            category: 'Regional',
            title:
                'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!',
            image: 'assets/img_news_one.png',
            onTap: () {
              GoRouter.of(context).go('/detail-news');
            },
            onPressedMore: () {},
          ),
          gapH40,
          NewsCard(
            category: 'Bola',
            image: 'assets/img_news_two.png',
            title:
                'PSIS Vc Persib: Tanpa dua Pilar Inti, Luis Milla Punya dbakbk djadkjab ajkafka',
            onTap: () {},
            onPressedMore: () {},
          ),
          NewsCard(
            category: 'Bola',
            image: 'assets/img_news_two.png',
            title:
                'PSIS Vc Persib: Tanpa dua Pilar Inti, Luis Milla Punya dbakbk djadkjab ajkafka',
            onTap: () {},
            onPressedMore: () {},
          ),
          NewsCard(
            category: 'Bola',
            image: 'assets/img_news_two.png',
            title:
                'PSIS Vc Persib: Tanpa dua Pilar Inti, Luis Milla Punya dbakbk djadkjab ajkafka',
            onTap: () {},
            onPressedMore: () {},
          ),
        ],
      ),
    );
  }
}
