import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constraints.dart ';
import '../../../size_config.dart';

class IconButtonWithContainer extends StatelessWidget {
  const IconButtonWithContainer({
    Key? key, required this.svgSrc,this.numberOfItems=0, required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numberOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
          clipBehavior: Clip.none, //use for overflow,
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(12)),
              height: getProportionateScreenHeight(46),
              width: getProportionateScreenWidth(46),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor.withOpacity(0.1),
              ),
              child: SvgPicture.asset(svgSrc),
            ),
            if(numberOfItems!=0)
              Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: getProportionateScreenWidth(14),
                    width: getProportionateScreenWidth(14),
                    decoration: BoxDecoration(
                      color: Color(0xffff4848),
                      shape: BoxShape.circle,
                      border:Border.all(width: 1.5,color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        "$numberOfItems",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          height: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ))
          ]
      ),
    );
  }
}
