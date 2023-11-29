import 'package:flutter/material.dart';
import '/core/constant/routes.dart';
import '/view/Screen/language.dart';
import 'view/Screen/OnBoarding.dart';
import 'view/Screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
