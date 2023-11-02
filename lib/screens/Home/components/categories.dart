import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <Map<String,dynamic>> categories=[
      {"icon":"assets/icons/Flash Icon.svg","text":"Flash Deal"},
      {"icon":"assets/icons/Bill Icon.svg","text":"Bill"},
      {"icon":"assets/icons/Game Icon.svg","text":"Game"},
      {"icon":"assets/icons/Gift Icon.svg","text":"Daily Gift"},
      {"icon":"assets/icons/Discover.svg","text":"More"},
    ];
    return
      Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(categories.length, (index) => CategoriesCard(text: categories[index]["text"], press: (){}, icon: categories[index]["icon"]))

        ),
      );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key, required this.text, required this.press, required this.icon,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(height: 5,),
            Text(text,textAlign: TextAlign.center,),
          ],
        ),

      ),
    );
  }
}
