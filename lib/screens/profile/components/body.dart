import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/constraints.dart';
import 'package:shop_ui/screens/profile/components/profile_menu.dart';
import 'package:shop_ui/screens/profile/components/profile_pic.dart';
import 'package:shop_ui/screens/sign_in/sign_in_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: 'assets/icons/User Icon.svg' ,
          text: 'My Account',
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: 'assets/icons/Bell.svg',
          text: 'Notifications',
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: 'assets/icons/Settings.svg',
          text: 'Setting',
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: 'assets/icons/Question mark.svg',
          text: 'Help Center',
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: 'assets/icons/Log out.svg',
          text: 'Log Out',
          press: () {
            Navigator.pushNamed(context, SignInScreen.routeName);
          },
        ),
      ],
    );
  }
}
