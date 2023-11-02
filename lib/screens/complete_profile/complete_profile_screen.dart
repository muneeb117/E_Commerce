import 'package:flutter/material.dart';
import 'package:shop_ui/screens/complete_profile/components/body.dart';
class CompleteProfile extends StatelessWidget {
  static String routeName='/complete_profile';
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complete Profile',
        ),
        centerTitle: true,
      ),
       body: Body(),
    );
  }
}
