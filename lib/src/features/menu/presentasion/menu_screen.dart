import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/menu_category_card_widget.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/bloc/categories_bloc.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          BlocProvider(
            create: (context) => CategoriesBloc()..add(CategoriesGet()),
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) {
                print(state);
                if (state is CategoriesLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state is CategoriesSuccess) {
                  return Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.start,
                    runSpacing: 10,
                    runAlignment: WrapAlignment.spaceBetween,
                    children: state.categories.map(
                      (categories) {
                        return MenuCategoryCardWidget(
                          category: categories,
                        );
                      },
                    ).toList(),
                  );
                }
                if (state is CategoriesFailed) {
                  return const Center(
                    child: Text("Error Load Data"),
                  );
                }
                return const Center(
                  child: Text('Waiting Moment'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
