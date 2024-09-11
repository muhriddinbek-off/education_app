import 'package:auto_route/annotations.dart';
import 'package:bumen/common/extensions/text_extensions.dart';
import 'package:flutter/material.dart';


@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: "Login Page".s(16).w(600).c(Colors.black),
      ),
    );
  }
}
