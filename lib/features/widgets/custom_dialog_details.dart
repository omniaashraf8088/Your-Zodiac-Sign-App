import 'package:flutter/material.dart';
import 'package:your_zodiac_app/core/utils/app_colors.dart';
import 'package:your_zodiac_app/core/utils/app_text_style.dart';

class CustomDialogDetails extends StatelessWidget {
  const CustomDialogDetails({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTextStyle.recoleta24w600.copyWith(color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: AppTextStyle.cerebriSans14w400.copyWith(
                color: AppColors.redColor,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.deepPurpleColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Close',
                style: AppTextStyle.cerebriSans14w400.copyWith(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
