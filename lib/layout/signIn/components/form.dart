import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/components/custom_suffix_icon.dart';
import 'package:news/components/primary_button.dart';
import 'package:news/components/social_button.dart';
import 'package:news/contants.dart';
import 'package:news/layout/forgot_password/forgot_password_screen.dart';
import 'package:news/layout/login_success/login_success_screen.dart';
import 'package:news/layout/signUp/sign_up_screen.dart';
import 'package:news/router.dart';
import 'package:news/size_config.dart';

import '../../../components/form_errors.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({Key? key}) : super(key: key);

  @override
  _FormSignInState createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email = '';
  String password = '';
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (newValue) => email = newValue!,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty && !errors.contains(emailNullError)) {
                  setState(() {
                    errors.add(emailNullError);
                  });
                  return '';
                } else if (value.isNotEmpty &&
                    !emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(invalidEmailError)) {
                  setState(() {
                    errors.add(invalidEmailError);
                  });
                  return '';
                }
              },
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(emailNullError)) {
                  setState(() {
                    errors.remove(emailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(invalidEmailError)) {
                  setState(() {
                    errors.remove(invalidEmailError);
                  });
                }
              },
              decoration: const InputDecoration(
                  labelText: "Email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Typing your email",
                  suffixIcon:
                      CustomSuffixIcon(svgIcon: 'assets/icon/Mail.svg')),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty && !errors.contains(passNullError)) {
                  setState(() {
                    errors.add(passNullError);
                  });
                  return '';
                } else if (value.isNotEmpty &&
                    value.length < 8 &&
                    !errors.contains(shortPassError)) {
                  setState(() {
                    errors.add(shortPassError);
                  });
                  return '';
                }
              },
              onSaved: (newValue) => password = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  setState(() {
                    errors.remove(passNullError);
                  });
                } else if (value.length >= 8 || value.isEmpty) {
                  errors.remove(shortPassError);
                }
              },
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: "Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Typing your password",
                  suffixIcon:
                      CustomSuffixIcon(svgIcon: 'assets/icon/Lock.svg')),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FormErrorMessages(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: textPrimaryColor,
                    value: remember,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    }),
                const Text("Remember me"),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: const Text(
                    'Forgot password',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                }),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  icon: "assets/icon/facebook-2.svg",
                  press: () {},
                ),
                SocialButton(
                  icon: "assets/icon/google-icon.svg",
                  press: () {},
                ),
                SocialButton(
                  icon: "assets/icon/twitter.svg",
                  press: () {},
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, SignUpScreen.routeName),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: textPrimaryColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
