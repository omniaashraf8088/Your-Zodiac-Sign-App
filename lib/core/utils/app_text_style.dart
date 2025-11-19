import 'package:flutter/material.dart';
import 'package:your_zodiac_app/core/utils/app_colors.dart';

abstract class AppTextStyle {
  static final TextStyle recoleta24w600 = TextStyle(
    fontFamily: 'Recoleta',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.24,
    color: AppColors.whiteColor,
  );

  static final TextStyle cerebriSans14w400 = TextStyle(
    fontFamily: 'Cerebri Sans',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.29,
    color: AppColors.whiteColor,
  );

  static final TextStyle lora24w700 = TextStyle(
    fontFamily: 'Lora',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
    color: AppColors.whiteColor,
  );
}
