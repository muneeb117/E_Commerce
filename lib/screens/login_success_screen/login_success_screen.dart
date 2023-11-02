import 'package:flutter/material.dart ';
import 'package:shop_ui/size_config.dart';
import 'package:shop_ui/screens/login_success_screen/components/Body.dart';
class LoginSuceessScreen extends StatelessWidget {
  static String routeName="/login_sucess";
  const LoginSuceessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success',style: TextStyle(
          fontSize: getProportionateScreenHeight(20),
        ),),
        centerTitle: true,
        leading: SizedBox(),
        ),
      body: Body(),

    );

  }
}
