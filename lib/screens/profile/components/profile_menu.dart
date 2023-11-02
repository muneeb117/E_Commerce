import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constraints.dart ';
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String icon, text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: const Color(0XFFF5F6F9),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                color: kPrimaryColor,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(text, style: Theme.of(context).textTheme.bodyText1),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
