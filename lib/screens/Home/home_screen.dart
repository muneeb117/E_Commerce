import 'package:flutter/material.dart';
import 'package:shop_ui/size_config.dart';
import 'package:shop_ui/screens/Home/components/body.dart';
import 'package:shop_ui/components/custom_nav_bar.dart';
import 'package:shop_ui/enum.dart';
class HomeScreen extends StatelessWidget {
  static String routeName="/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home ,

      ),
    );
  }
}
