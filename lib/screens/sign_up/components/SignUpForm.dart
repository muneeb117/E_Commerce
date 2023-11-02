import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_errors.dart';
import '../../../constraints.dart';
import '../../../size_config.dart';
import 'package:shop_ui/screens/complete_profile/complete_profile_screen.dart';
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}


class _SignUpFormState extends State<SignUpForm> {
  final _formkey = GlobalKey<FormState>();
  FirebaseAuth _auth=FirebaseAuth.instance;
  String? email;
  String? password;
  String? conform_password;
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final List<String> errors = [];
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
  }
  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError(String error) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30),),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildConformPasswordFormField(),
          FormErrors(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40),),
          DefaultButton(text: 'Continue', press: (){
            if(_formkey.currentState!.validate()){
              _auth.createUserWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString());
              // Navigator.pushNamed(context,CompleteProfile.routeName);
            }
          })
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      onSaved: (newValue) {
        password = newValue;
      },
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {

            removeError(kPassNullError);

        } else if (value.length >= 8 &&
            errors.contains(kShortPassError)) {

            removeError(kShortPassError);

        }
        password=value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
            addError(kPassNullError);
            return "";
        } else if (value.length < 8 &&
            !errors.contains(kShortPassError)) {

            addError(kShortPassError);

          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'Password',
        hintText: 'Enter your Password',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) {
        conform_password = newValue;
      },
      obscureText: true,
      onChanged: (value) {
        if (password == conform_password) {

            removeError(kMatchPassError);


        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(kPassNullError);
           return "";
        } else if (password!=value) {
            addError(kMatchPassError);
          // return "";
         }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'Conform-Password',
        hintText: 'Re-enter Your Password ',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }
  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) {
        email = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {

            removeError(kEmailNullError);

        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {

            removeError(kInvalidEmailError);
            // errors.remove(kInvalidEmailError);

        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {

            addError(kEmailNullError);

          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {

            addError(kInvalidEmailError);

          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'Email',
        hintText: 'Enter your email',
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
