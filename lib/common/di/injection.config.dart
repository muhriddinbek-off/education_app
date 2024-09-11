// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bumen/common/di/app_module.dart' as _i1000;
import 'package:bumen/common/di/network_module.dart' as _i287;
import 'package:bumen/common/widgets/display/display.dart' as _i574;
import 'package:bumen/common/widgets/display/display_impl.dart' as _i511;
import 'package:bumen/domain/model/auth_interceptor/auth_interceptor.dart'
    as _i130;
import 'package:bumen/domain/model/storage/storage.dart' as _i690;
import 'package:bumen/features/start/onboarding/cubit/on_boarding_cubit.dart'
    as _i484;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i484.OnBoardingCubit>(() => _i484.OnBoardingCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i690.Storage>(
      () => _i690.Storage.create(),
      preResolve: true,
    );
    gh.singleton<_i574.Display>(() => _i511.DisplayImpl());
    gh.lazySingleton<_i130.AuthInterceptor>(
        () => _i130.AuthInterceptor(gh<_i690.Storage>()));
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i130.AuthInterceptor>()));
    return this;
  }
}

class _$AppModule extends _i1000.AppModule {}

class _$NetworkModule extends _i287.NetworkModule {}
