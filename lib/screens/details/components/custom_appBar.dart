import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icn_button.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize =>  Size.fromHeight(AppBar().preferredSize.height);
  const CustomAppBar({
    Key? key, required this.rating,
  }) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
              icon: Icons.arrow_back_ios_new,
              press: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  const SizedBox(width: 5,),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
