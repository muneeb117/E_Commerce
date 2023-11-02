import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constraints.dart';
import 'package:shop_ui/screens/Home/home_screen.dart';
import 'package:shop_ui/screens/profile/components/body.dart';
import 'package:shop_ui/enum.dart';

import '../../components/custom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile_screen";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {},
        ),
      ),
      body: const Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
