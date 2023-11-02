import 'package:flutter/material.dart';
import 'package:shop_ui/constraints.dart';
import 'package:shop_ui/screens/sign_in/sign_in_screen.dart';
import 'package:shop_ui/size_config.dart';

import '../../components/default_button.dart';
import 'SplashContent.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(

          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                        text: splashData[index]["text"],
                        image: splashData[index]['image'])),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                splashData.length, (index) => buildDot(index))),
                        Spacer(flex: 2,),
                        DefaultButton(press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);},

                          text: 'Continue',),
                        Spacer(),
                      ],
                    ),
                  )),
            ],
          ),

      ),
    );
  }


}
