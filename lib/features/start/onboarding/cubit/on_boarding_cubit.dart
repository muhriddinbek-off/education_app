import 'package:bumen/common/base/base_cubit.dart';
import 'package:bumen/features/start/onboarding/cubit/on_boarding_state.dart';
import 'package:injectable/injectable.dart';


@injectable
class OnBoardingCubit
    extends BaseCubit<OnBoardingBuildable, OnBoardingListenable> {
  OnBoardingCubit() : super(const OnBoardingBuildable());

  void changePhone() {
    build(
      (buildable) => buildable.copyWith(phone: buildable.phone + 1),
    );
    invoke(const OnBoardingListenable(effect: Effect.success));
  }
}
