import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function() buttonFunction;
  const CustomButton(
      {required this.buttonText, required this.buttonFunction, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonFunction,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 54),
        ),
        backgroundColor: MaterialStateProperty.all(
          const Color(0xff16F581),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          ),
        ),
      ),
      child: Text(
        buttonText.toUpperCase(),
        style: kButtonText,
      ),
    );
  }
}
