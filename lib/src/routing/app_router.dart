import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/onboarding_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/sign_in_screen.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/sign_up_scren.dart';
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
        ]),
  ],
);
