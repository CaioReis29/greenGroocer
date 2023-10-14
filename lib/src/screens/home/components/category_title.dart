// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:greengrocer/src/config/custom_colors.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          decoration: BoxDecoration(
            color: isSelected ? CustomColors.customSwatchColor : Colors.transparent,
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Text(
            category,
            style: TextStyle(
              color:
                  isSelected ? Colors.white : CustomColors.customConstrastColor,
              fontWeight: FontWeight.bold,
              fontSize: isSelected ? 16 : 14,
            ),
          ),
        ),
      ),
    );
  }
}
