import 'package:credit_card_payment/constants/colors/app_colors.dart';
import 'package:credit_card_payment/constants/strings/app_strings.dart';
import 'package:credit_card_payment/extension/sized_extension.dart';
import 'package:credit_card_payment/ui/widget/button/global_button.dart';
import 'package:credit_card_payment/ui/widget/card_info.dart';
import 'package:credit_card_payment/ui/widget/card_security.dart';
import 'package:flutter/material.dart';

import 'widget/save_card.dart';
import 'widget/security_info.dart';

class CardPageView extends StatefulWidget {
  const CardPageView({super.key});

  @override
  State<CardPageView> createState() => _CardPageViewState();
}

class _CardPageViewState extends State<CardPageView> {
  late final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        foregroundColor: Colors.white,
        title: const Text(AppStrings.appBarText),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
        child: ListView(
          children: [
            CardInfo(),
            30.h,
            const CardSecurity(),
            30.h,
            const SaveCard(),
            30.h,
            GlobalButton(
              text: AppStrings.payBtn,
              onPressed: () {},
              width: MediaQuery.of(context).size.width,
            ),
            30.h,
            const SecurityInfo(),
          ],
        ),
      ),
    );
  }
}
