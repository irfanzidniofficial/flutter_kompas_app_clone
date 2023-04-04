import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/heading_news_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/news_card.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/news_list_bloc.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:flutter_kompas_app_clone/src/shared/custom_alert_dialog.dart';
import 'package:flutter_kompas_app_clone/src/shared/enum_status.dart';
import 'package:go_router/go_router.dart';

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
              context.pushNamed(AppRoute.search.name);
            },
            icon: const Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              print(state);
              if (state is AuthLoading) {
                return const CircularProgressIndicator();
              }
              if (state is AuthSuccess) {
                return IconButton(
                  onPressed: () {
                    context.pushNamed(
                      AppRoute.profile.name,
                      params: {
                        'id': state.user.id.toString(),
                      },
                      extra: state.user,
                    );
                  },
                  icon: const Icon(
                    Icons.account_circle,
                    size: 30.0,
                  ),
                );
              }

              return const Icon(Icons.check);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          Column(
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
                  context.pushNamed(AppRoute.detailNews.name);
                },
                onPressedMore: () {},
              ),
              gapH40,
            ],
          ),
          BlocConsumer<NewsListBloc, NewsListState>(
            listener: (context, state) {
              if (state.status == Status.error) {
                return showCustomSnackBar(context, state.errorMessage);
              }
            },
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.status == Status.error) {
                return const Center(
                  child: Text('Terjadi Kesalahan'),
                );
              } else if (state.status == Status.success) {
                return Column(
                  children: state.newsList.map(
                    (news) {
                      return NewsCard(
                        news: news,
                      );
                    },
                  ).toList(),
                );
              }
              return const Center(
                child: Text('Try Again'),
              );
            },
          ),
        ],
      ),
    );
  }
}
