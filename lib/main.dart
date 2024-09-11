import 'package:bumen/common/di/injection.dart';
import 'package:bumen/common/router/app_router.dart';
import 'package:bumen/common/widgets/display/display_widget.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayWidget(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Bumen',
        routerConfig: getIt<AppRouter>().config(),
        theme: ThemeData(
          fontFamily: "",
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.white),
        ),
      ),
    );
  }
}
