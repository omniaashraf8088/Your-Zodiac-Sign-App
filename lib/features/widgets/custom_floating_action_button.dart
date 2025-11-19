import 'package:flutter/material.dart';
import 'package:your_zodiac_app/core/utils/app_colors.dart';
import 'package:your_zodiac_app/features/presentation/function/get_zodiac.dart';
import 'package:your_zodiac_app/features/widgets/custom_dialog_details.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final int day;
  final int month;

  const CustomFloatingActionButton({
    super.key,
    required this.day,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.lightBlueColor,
      child: SizedBox(
        width: 32,
        height: 32,
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_circle_right_outlined,
            size: 35,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      onPressed: () {
        final zodiac = getZodiac(day, month);
        showDialog(
          context: context,
          builder: (context) => CustomDialogDetails(
            title: 'برجك: ${zodiac['name']}',
            content: zodiac['details'] ?? '',
          ),
        );
      },
    );
  }
}
