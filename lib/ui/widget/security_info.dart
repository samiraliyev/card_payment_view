import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';
import '../../constants/strings/app_strings.dart';

class SecurityInfo extends StatelessWidget {
  const SecurityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.lock,
            color: AppColors.encryptTextColor,
            size: 14.0,
          ),
          Text(
            AppStrings.encryptText,
            style: TextStyle(fontSize: 12.0, color: AppColors.encryptTextColor),
          )
        ],
      ),
    );
  }
}
