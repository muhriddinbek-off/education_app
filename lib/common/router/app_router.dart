import 'package:auto_route/auto_route.dart';
import 'package:bumen/features/start/auth/login/login_page.dart';
import 'package:bumen/features/start/onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: OnBoardingRoute.page, initial: true, path: '/onBoarding'),
    AutoRoute(page: LoginRoute.page, path: "/login"),
  ];
}
