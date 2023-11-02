import 'package:flutter/material.dart';
import 'package:shop_ui/screens/Otp/components/body.dart';
class OtpScreen extends StatelessWidget {
  static String routeName="/otp";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
