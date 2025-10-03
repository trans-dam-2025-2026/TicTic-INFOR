import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/screens/onboarding/onboarding_first_screen.dart';
import 'package:tictic_infor/screens/onboarding/onboarding_second_screen.dart';
import 'package:tictic_infor/screens/onboarding/onboarding_third_screen.dart';
import 'package:tictic_infor/screens/register_screen.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';

Map<String, WidgetBuilder> router = {
  WelcomeScreen.routeName: (BuildContext context) => WelcomeScreen(),
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  RegisterScreen.routeName: (BuildContext context) => RegisterScreen(),
  HomeScreen.routeName: (BuildContext context) => HomeScreen(),
  OnboardingFirstScreen.routeName: (BuildContext context) => OnboardingFirstScreen(),
  OnboardingSecondScreen.routeName: (BuildContext context) => OnboardingSecondScreen(),
  OnboardingThirdScreen.routeName: (BuildContext context) => OnboardingThirdScreen(),
};
