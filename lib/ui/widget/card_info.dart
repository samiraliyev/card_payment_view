import 'package:credit_card_payment/extension/sized_extension.dart';
import 'package:flutter/material.dart';

import '../../constants/colors/app_colors.dart';
import '../../constants/strings/app_strings.dart';
import 'input/global_input.dart';

class CardInfo extends StatelessWidget {
  late final controller = TextEditingController();

  CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.cardNumber,
          style: TextStyle(color: Colors.grey, fontSize: 20.0),
        ),
        10.h,
        GlobalInput(
          controller: controller,
          hintColor: AppColors.hintColor,
        ),
        30.h,
        const Text(
          AppStrings.cardHolderName,
          style: TextStyle(color: Colors.grey, fontSize: 20.0),
        ),
        10.h,
        GlobalInput(
          hintColor: AppColors.hintColor,
          controller: controller,
        ),
      ],
    );
  }
}
