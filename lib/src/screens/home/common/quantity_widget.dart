// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          _QuantityButton(
            Colors.grey,
            Icons.remove,
            () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '1Kg',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _QuantityButton(
            CustomColors.customSwatchColor,
            Icons.add,
            () {},
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton(
    this.color,
    this.icon,
    this.onPressed,
  );

  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Icon(
            icon,
            size: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
