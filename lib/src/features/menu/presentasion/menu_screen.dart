import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/menu_category_card_widget.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';

import 'package:go_router/go_router.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Menu'),
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
          IconButton(
            onPressed: () {
              context.pushNamed(AppRoute.profile.name);
            },
            icon: const Icon(
              Icons.account_circle,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          gapH24,
          Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            runSpacing: 10,
            children: const [
              MenuCategoryCardWidget(),
              MenuCategoryCardWidget(),
              MenuCategoryCardWidget(),
              MenuCategoryCardWidget(),
            ],
          )
        ],
      ),
    );
  }
}
