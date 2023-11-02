import 'package:flutter/material.dart';
import 'package:shop_ui/screens/forgot_password/components/body.dart';
class ForgotPasswordScreen extends StatelessWidget {
  static String routeName="/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Forgot Password'),
        elevation:0,
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ) ,
      ),
      body: Body(),
    );
  }
}
