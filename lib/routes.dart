import 'package:flutter/material.dart';
import 'package:shop_ui/screens/Home/home_screen.dart';
import 'package:shop_ui/screens/details/detail_screen.dart';
import 'package:shop_ui/screens/forgot_password/forgot_password.dart';
import 'package:shop_ui/screens/login_success_screen/login_success_screen.dart';
import 'package:shop_ui/screens/sign_in/sign_in_screen.dart';
import 'package:shop_ui/screens/splash/splash_screen.dart';
import 'package:shop_ui/screens/sign_up/sign_up_screen.dart';
import 'package:shop_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_ui/screens/Otp/otp_screen.dart';
import 'package:shop_ui/screens/cart/cart_screen.dart';
import 'package:shop_ui/screens/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuceessScreen.routeName: (context) => LoginSuceessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfile.routeName: (context) => CompleteProfile(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
