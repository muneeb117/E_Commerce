import 'package:flutter/material.dart';
import 'package:shop_ui/screens/Home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';
import 'package:shop_ui/screens/cart/cart_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithContainer(
              svgSrc: 'assets/icons/Cart Icon.svg',
              press: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              }),
          IconButtonWithContainer(
            svgSrc: 'assets/icons/Bell.svg',
            numberOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
