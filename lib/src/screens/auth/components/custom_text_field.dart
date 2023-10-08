// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.prefix,
    required this.label,
    this.sufix,
    this.isSecret = false,
    this.inputFormatters,
  }) : super(key: key);

  final IconData? prefix;
  final String? label;
  final IconData? sufix;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefix,
            size: 25,
          ),
          labelText: widget.label,
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () => setState(() {
                    isObscure = !isObscure;
                  }),
                  icon: Icon(
                    isObscure
                    ? Icons.visibility
                    : Icons.visibility_off,
                    size: 25,
                  ),
                )
              : null,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
