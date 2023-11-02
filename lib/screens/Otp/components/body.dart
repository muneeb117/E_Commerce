import 'package:flutter/material.dart';
import 'package:shop_ui/constraints.dart';
import 'package:shop_ui/size_config.dart';

import '../../../components/default_button.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              buildtimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: (){},
                  child:const Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              )),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buildtimer() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("We send you code to +92 3096065***"),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context, value, child) => Text(
              "00:${value.toString()}",
              style: TextStyle(color: kPrimaryColor),
            ),
            onEnd: () {},
          ),
        ],
      ),
    );
  }
}


