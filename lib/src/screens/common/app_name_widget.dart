// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({
    Key? key,
    this.greenTitleColor,
    this.textSize = 30,
  }) : super(key: key);

  final Color? greenTitleColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Green",
            style: TextStyle(
              color: greenTitleColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: "groocer",
            style: TextStyle(
              color: CustomColors.customConstrastColor,
            ),
          ),
        ],
      ),
    );
  }
}
