import 'package:flutter/material.dart';
import 'package:news/components/primary_button.dart';
import 'package:news/contants.dart';
import 'package:news/size_config.dart';

class FormOtp extends StatefulWidget {
  const FormOtp({Key? key}) : super(key: key);

  @override
  _FormOtpState createState() => _FormOtpState();
}

class _FormOtpState extends State<FormOtp> {
  final _formKey = GlobalKey<FormState>();
  FocusNode? pin2;
  FocusNode? pin3;
  FocusNode? pin4;

  @override
  void initState() {
    super.initState();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2!.dispose();
    pin3!.dispose();
    pin4!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(50) * 0.4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(150),
                child: TextFormField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin2),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(150),
                child: TextFormField(
                  focusNode: pin2,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin3),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(150),
                child: TextFormField(
                  focusNode: pin3,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin4),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(150),
                child: TextFormField(
                  focusNode: pin4,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => {
                    if (value.length == 1) {pin4!.unfocus()}
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(90) * 0.9,
          ),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
          SizedBox(
            height: getProportionateScreenHeight(90) * 0.9,
          ),
          GestureDetector(
            onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text('AlertDialog Title'),
                      content: const Text('AlertDialog description'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    )),
            child: const Text("Resend otp code"),
          )
        ],
      ),
    );
  }
}
