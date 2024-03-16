// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors/app_colors.dart';

class GlobalButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double width;
  final double? height;
  const GlobalButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonColor,
            foregroundColor: AppColors.bgColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            )),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
