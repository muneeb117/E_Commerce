import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constraints.dart ';
import '../enum.dart';
import '../screens/Home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Color(0XFFB6B6B6);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0XFFDADADA).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg",color: MenuState.home==selectedMenu?kPrimaryColor:inActiveColor,),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg",),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName,);
              },
              icon: SvgPicture.asset("assets/icons/User Icon.svg",color: MenuState.profile==selectedMenu?kPrimaryColor:inActiveColor,),
            ),
          ],
        ),
      ),
    );
  }
}
