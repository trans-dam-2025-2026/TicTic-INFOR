import 'package:flutter/material.dart';
import 'package:tictic_infor/screens/home_screen.dart';
import 'package:tictic_infor/screens/login_screen.dart';
import 'package:tictic_infor/screens/register_screen.dart';
import 'package:tictic_infor/screens/welcome_screen.dart';

Map<String, WidgetBuilder> router = {
  WelcomeScreen.routeName: (BuildContext context) => WelcomeScreen(),
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  RegisterScreen.routeName : (BuildContext context) => RegisterScreen(),
  HomeScreen.routeName : (BuildContext context) => HomeScreen(),
};