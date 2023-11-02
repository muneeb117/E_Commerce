import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constraints.dart ';
import '../../../size_config.dart';
class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;

  @override
  void initState() {
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:  BorderSide(color: kTextColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:  BorderSide(color: kTextColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:  BorderSide(color: kTextColor),
                      ),
                    ),
                    onChanged: (value) {
                      nextField(value: value, focusNode: focusNode2);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    focusNode: focusNode2,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                    ),
                    onChanged: (value) {
                      nextField(value: value, focusNode: focusNode3);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    focusNode: focusNode3,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                    ),
                    onChanged: (value) {
                      nextField(value: value, focusNode: focusNode4);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(60),
                  child: TextFormField(
                    focusNode: focusNode4,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: getProportionateScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: kTextColor),
                      ),
                    ),
                    onChanged: (value) {
                      focusNode4.unfocus();
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
            ),
            DefaultButton(
              text: 'Continue',
              press: () {},
            )
          ],
        ));
  }
}