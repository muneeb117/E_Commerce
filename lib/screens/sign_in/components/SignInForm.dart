import 'package:flutter/material.dart';
import 'package:shop_ui/screens/login_success_screen/login_success_screen.dart';

import '../../../components/form_errors.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constraints.dart';
import '../../../size_config.dart';
import '../../forgot_password/forgot_password.dart';
class SignInFrom extends StatefulWidget {
  const SignInFrom({Key? key}) : super(key: key);

  @override
  State<SignInFrom> createState() => _SignInFromState();
}

class _SignInFromState extends State<SignInFrom> {
  String? email;
  String? password;
  bool remember=false;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  void addError( String error){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }
  void removeError(String error){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20),),
          FormErrors(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20),),
          Row(
            children: [
              Checkbox(
                 value: remember,
                 activeColor: kPrimaryColor,
                onChanged: (value){
                   setState(() {
                     remember=value!;
                   });
                },),
             const Text('Remember me'),
             const Spacer(),
              GestureDetector(
                onTap:()=> Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
                child:const Text('Forgot Password',style: TextStyle(
                    decoration: TextDecoration.underline
                ),),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight*0.02,
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, LoginSuceessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue){
        password=newValue;
      },
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            removeError(kPassNullError );
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            removeError(kShortPassError );

          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            addError(kPassNullError);

          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            addError(kShortPassError);

          });
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

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) {
        email = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
           removeError(kEmailNullError);

          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            removeError(kInvalidEmailError);
            // errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            addError(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            addError(kInvalidEmailError);

          });
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
