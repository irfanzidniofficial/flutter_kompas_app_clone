import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/bloc/categories_list_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/news_list_bloc.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:flutter_kompas_app_clone/src/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc()..add(AuthGetCurrentUser()),
        ),
        BlocProvider<NewsListBloc>(
          create: (context) => NewsListBloc()..add(GetNewsListEvent()),
        ),
        BlocProvider<CategoriesListBloc>(
          create: (context) => CategoriesListBloc()..add(GetCategoriesListEvent()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: whiteColor,
          appBarTheme: const AppBarTheme(
            actionsIconTheme: IconThemeData(),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // background (button) color
              foregroundColor: Colors.white, // foreground (text) color
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        routerConfig: goRouter,
      ),
    );
  }
}