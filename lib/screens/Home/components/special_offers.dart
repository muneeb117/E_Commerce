import 'package:flutter/material.dart';
import 'package:shop_ui/screens/Home/components/section_tile.dart';

import '../../../size_config.dart';
class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          text: 'Special For You',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(image: 'assets/images/Image Banner 2.png', category: 'SmartPhone', numberOfBrands: 12, press: () {  },),
              SpecialOfferCard(image: 'assets/images/Image Banner 3.png', category: 'Fashion', numberOfBrands: 35, press: () {  },),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key, required this.image, required this.category, required this.numberOfBrands, required this.press,
  }) : super(key: key);
  final String category,image;
  final int numberOfBrands;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:
      Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20),),
        child: SizedBox(
            width: getProportionateScreenWidth(242),
            height: getProportionateScreenWidth(100),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF343434).withOpacity(0.4),
                              const Color(0xFF343434).withOpacity(0.15),
                            ])),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15),vertical: getProportionateScreenWidth(10)),
                    child: Text.rich(
                      TextSpan(
                          children:[
                            TextSpan(
                              text: "$category\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.w800
                              ),
                            ),
                            TextSpan(
                              text: "$numberOfBrands Brands",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ]
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
