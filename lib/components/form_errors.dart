import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/size_config.dart';

class FormErrorMessages extends StatelessWidget {
  const FormErrorMessages({Key? key, required this.errors}) : super(key: key);
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formGenerate(error: errors[index])),
    );
  }

  Row formGenerate({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icon/Error.svg',
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error)
      ],
    );
  }
}
