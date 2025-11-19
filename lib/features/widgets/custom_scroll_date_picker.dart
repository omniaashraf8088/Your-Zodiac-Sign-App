import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:your_zodiac_app/core/utils/app_text_style.dart';
import 'package:your_zodiac_app/core/utils/app_colors.dart';
import 'package:your_zodiac_app/data/models/month_names_model.dart';
import 'package:your_zodiac_app/features/widgets/custom_floating_action_button.dart';

class CustomScrollDatePicker extends StatefulWidget {
  const CustomScrollDatePicker({super.key});

  @override
  State<CustomScrollDatePicker> createState() => _CustomScrollDatePickerState();
}

class _CustomScrollDatePickerState extends State<CustomScrollDatePicker> {
  DateTime _selectedDate = DateTime.now();

  final List<DateTime> _dates = List.generate(
    365,
    (index) => DateTime.now().subtract(Duration(days: index)),
  );

  int get _selectedIndex => _dates.indexWhere(
    (d) =>
        d.day == _selectedDate.day &&
        d.month == _selectedDate.month &&
        d.year == _selectedDate.year,
  );

  void _updateZodiac(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> monthNames = MonthNamesModel.monthNames;
    return Container(
      color: AppColors.deepPurpleColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${_selectedDate.day}",
                style: AppTextStyle.lora24w700.copyWith(color: Colors.white),
              ),
              SizedBox(width: 34),
              Text(
                monthNames[_selectedDate.month - 1],
                style: AppTextStyle.lora24w700.copyWith(color: Colors.white),
              ),
              SizedBox(width: 34),
              Text(
                "${_selectedDate.year}",
                style: AppTextStyle.lora24w700.copyWith(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: AppColors.redColor,
            thickness: 1,
            indent: 50,
            endIndent: 50,
          ),
          SizedBox(height: 10),
          Container(
            color: AppColors.deepPurpleColor,
            width: 375,
            height: 182,
            child: CupertinoPicker(
              scrollController: FixedExtentScrollController(
                initialItem: _selectedIndex,
              ),
              itemExtent: 40,
              diameterRatio: 1.2,
              squeeze: 1.2,
              magnification: 1.2,
              backgroundColor: AppColors.deepPurpleColor,
              onSelectedItemChanged: (int index) {
                _updateZodiac(_dates[index]);
              },
              children: _dates.map((date) {
                final isSelected =
                    date.day == _selectedDate.day &&
                    date.month == _selectedDate.month &&
                    date.year == _selectedDate.year;
                return AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 200),
                  style: AppTextStyle.lora24w700.copyWith(
                    fontSize: isSelected ? 22 : 18,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "${date.day}     ${monthNames[date.month - 1]}      ${date.year} ",
                      style: AppTextStyle.lora24w700.copyWith(
                        fontSize: isSelected ? 22 : 18,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 91),

          CustomFloatingActionButton(
            day: _selectedDate.day,
            month: _selectedDate.month,
          ),
        ],
      ),
    );
  }
}
