// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors/app_colors.dart';

class GlobalInput extends StatefulWidget {
  const GlobalInput({
    super.key,
    this.controller,
    this.focus,
    this.validator,
    this.onFieldSubmitted,
    required this.hintColor,
  });
  final TextEditingController? controller;
  final FocusNode? focus;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final Color hintColor;

  @override
  State<GlobalInput> createState() => _GlobalInputState();
}

class _GlobalInputState extends State<GlobalInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focus,
      controller: widget.controller,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: const InputDecoration(
        hintStyle: TextStyle(color: AppColors.hintColor),
        filled: true,
        fillColor: AppColors.inputColor,
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }
}
