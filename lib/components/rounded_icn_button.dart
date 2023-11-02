import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          
        ),
        child: IconButton(
          onPressed: press,
          splashColor: Colors.transparent,
          style: IconButton.styleFrom(
           elevation: 0,
            hoverColor: Colors.transparent,


          ),
          icon: Icon(icon,color: Colors.black,),

        ));
    // //   SizedBox(
    // //     height: getProportionateScreenHeight(40),
    // //     width: getProportionateScreenWidth(40),
    // //     child: ElevatedButton(
    // //       style: ElevatedButton.styleFrom(
    // //         backgroundColor: Colors.white,
    // //           shadowColor: Colors.transparent,
    // //           foregroundColor: Colors.black,
    // //           elevation: 0,
    // //           shape: RoundedRectangleBorder(
    // //             borderRadius: BorderRadius.circular(30),
    // //           )),
    // //       onPressed:press,
    // // child: Icon(
    // //       icon,
    //     )
    //     ),
    //   );
  }
}
