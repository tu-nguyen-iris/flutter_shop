import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/components/custom_suffix_icon.dart';
import 'package:news/components/primary_button.dart';
import 'package:news/contants.dart';
import 'package:news/components/form_errors.dart';
import 'package:news/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                const Text(
                  "Forgot Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const Text(
                    "Loving the games. I have managed to play one round of Legends of Lysteria tonight. Great fun.",
                    textAlign: TextAlign.center),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
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
                      hintText: "Enter your Email",
                      suffixIcon: CustomSuffixIcon(
                        svgIcon: "assets/icon/Mail.svg",
                      )),
                ),
                FormErrorMessages(errors: errors),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                DefaultButton(
                  text: "Continue",
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      // return const CupertinoAlertDialog(
                      //   title: Text("dsadasdas"),
                      //   content: Text("boxy"),
                      // );
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      // onTap: () => Navigator.pushNamed(context, )},
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
          )),
        ));
  }
}
