import 'package:flutter/material.dart';
import 'package:shop_ui/components/default_button.dart';
import 'package:shop_ui/components/rounded_icn_button.dart';
import 'package:shop_ui/constraints.dart';
import 'package:shop_ui/models/Product.dart';
import 'package:shop_ui/screens/details/components/product_descripton.dart';
import 'package:shop_ui/screens/details/components/product_images.dart';
import 'package:shop_ui/screens/details/components/top_rounded_cnt.dart';
import 'package:shop_ui/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                press: () {},
              ),
              TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 0.15,
                                right: SizeConfig.screenWidth * 0.15,),
                               // top: getProportionateScreenWidth(15)),
                               // bottom: getProportionateScreenWidth(40)),
                            child: DefaultButton(
                              text: "Add to Cart",
                              press: () {},
                            ),
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconButton(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: 5,
          ),
          RoundedIconButton(
            icon: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: getProportionateScreenWidth(2),
      ),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(35),
      width: getProportionateScreenWidth(35),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
