import 'package:flutter/material.dart';
import 'package:your_zodiac_app/core/utils/app_colors.dart';
import 'package:your_zodiac_app/core/utils/app_text_style.dart';
import 'package:your_zodiac_app/features/widgets/custom_scroll_date_picker.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepPurpleColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'What’s your date of birth?',
              style: AppTextStyle.recoleta24w600,
            ),
            SizedBox(height: 8),
            Text(
              'Date is important for determining your Sun sign, numerology and compatibility',
              style: AppTextStyle.cerebriSans14w400,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
           CustomScrollDatePicker()
          ],
        ),
      ),
    );
  }
}
