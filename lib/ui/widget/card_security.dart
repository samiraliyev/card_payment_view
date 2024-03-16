import 'package:credit_card_payment/constants/colors/app_colors.dart';
import 'package:credit_card_payment/extension/sized_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants/strings/app_strings.dart';
import 'input/global_input.dart';

class CardSecurity extends StatefulWidget {
  const CardSecurity({super.key});

  @override
  State<CardSecurity> createState() => _CardSecurityState();
}

class _CardSecurityState extends State<CardSecurity> {
  late final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const Text(
                AppStrings.exDate,
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              10.h,
              GlobalInput(
                hintColor: AppColors.hintColor,
                controller: controller,
              ),
            ],
          ),
        ),
        20.w,
        Expanded(
          child: Column(
            children: [
              const Text(
                AppStrings.cvv,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
              10.h,
              GlobalInput(
                hintColor: AppColors.hintColor,
                controller: controller,
              ),
            ],
          ),
        )
      ],
    );
  }
}
