import 'package:flutter/material.dart';
import 'package:shop_ui/size_config.dart';
import 'package:shop_ui/screens/sign_up/components/body.dart';
class SignUpScreen extends StatelessWidget {
  static String routeName="sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up',style: TextStyle(
          fontSize: getProportionateScreenHeight(23)
        ),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios_new),
          )
        ),
      body: Body(),
      );
  }
}
