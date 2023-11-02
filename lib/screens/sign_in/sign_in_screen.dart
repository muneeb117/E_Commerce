

import 'package:flutter/material.dart';
import 'package:shop_ui/screens/sign_in/components/body.dart';
import 'package:shop_ui/screens/splash/splash_screen.dart';
import '';

class SignInScreen extends StatelessWidget {
  static String routeName="/Sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, SplashScreen.routeName);
        }, icon: Icon(Icons.arrow_back_ios_new)),
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
