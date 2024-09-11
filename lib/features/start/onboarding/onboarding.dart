import 'package:auto_route/auto_route.dart';
import 'package:bumen/common/base/base_page.dart';
import 'package:bumen/common/extensions/text_extensions.dart';
import 'package:bumen/common/router/app_router.dart';
import 'package:bumen/features/start/onboarding/cubit/on_boarding_cubit.dart';
import 'package:bumen/features/start/onboarding/cubit/on_boarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OnBoardingPage extends BasePage<OnBoardingCubit, OnBoardingBuildable,
    OnBoardingListenable> {
  const OnBoardingPage({super.key});

  @override
  void listener(BuildContext context, OnBoardingListenable state) {
    super.listener(context, state);

    switch (state.effect) {
      case Effect.success:
        context.router.replace(LoginRoute(phone: "991234567"));
        break;
      case Effect.error:
        print("error occured");
        break;
    }
  }

  @override
  Widget builder(BuildContext context, OnBoardingBuildable state) {
    return Scaffold(
      body: Column(
        children: [
          "Onbaording page: ${state.phone}".s(16).w(600).c(Colors.black),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<OnBoardingCubit>().changePhone();
            },
            // context.router.replace(LoginRoute(phone: "991234567")),
            child: Center(
              child: "Tap here".s(16),
            ),
          ),
        ],
      ),
    );
  }
}
