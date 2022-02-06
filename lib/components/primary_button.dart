import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/contants.dart';

class DefaultButton extends StatelessWidget{
  const DefaultButton({
    Key? key,
    this.text,
    this.press
}) : super(key: key);

  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: TextButton(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                textStyle: const TextStyle(fontSize: 15),
                backgroundColor: textPrimaryColor
            ),
            onPressed: press as void Function()?,
            child: Text(text!),
          ),
        )
    );
  }

}