import 'package:flutter_kompas_app_clone/src/features/account/edit_profile_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/account/profile_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/onboarding_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/sign_in_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/sign_up_scren.dart';


import 'package:flutter_kompas_app_clone/src/features/menu/presentation/menu_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/saved/presentation/saved_screen.dart';
import 'package:flutter_kompas_app_clone/src/routing/main_screen.dart';


import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(

        path: '/',
        builder: (context, state) => const OnboardingScreen(),
        routes: [
          GoRoute(
            path: 'sign-in',
            builder: (context, state) => const SignInScreen(),
          ),
          GoRoute(
            path: 'sign-up',
            builder: (context, state) => const SignUpScreen(),
          ),
          GoRoute(
            path: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: 'edit-profile',
            builder: (context, state) => const EditProfileScreen(),
          ),
        ]),

      path: '/',
      builder: (context, state) => const OnboardingScreen(),
      routes: [
        GoRoute(
          path: 'sign-in',
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: 'sign-up',
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: 'main',
          builder: (context, state) => const MainScreen(),
        ),
        GoRoute(
          path: 'saved',
          builder: (context, state) => const SavedScreen(),
        ),
        GoRoute(
          path: 'menu',
          builder: (context, state) => const MenuScreen(),
        ),
      ],
    ),

  ],
);
