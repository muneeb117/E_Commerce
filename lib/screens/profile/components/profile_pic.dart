import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/Profile Image.png"),
            ),
            Positioned(
              bottom: 0,
              right: -12,
              child: SizedBox(
                height: 45,
                width: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      backgroundColor: Color(0XFFF5F6F9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.white)
                      )
                  ),
                  onPressed: () {},
                  child:SvgPicture.asset("assets/icons/Camera Icon.svg") ,
                ),
              ),
            ),
          ],
        )
    );
  }
}
