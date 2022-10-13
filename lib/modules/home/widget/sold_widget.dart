// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class SoldWidget extends StatelessWidget {

  const SoldWidget({required this.currentMonth,Key? key, required this.lastMonth,}) : super(key: key);

  final String currentMonth;
  final String lastMonth;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 180.h,
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Sold Amount',
                style: TextStyle(
                    color: ColorManager.buttonColor.withAlpha(200), fontSize: 20.sp,fontWeight: FontWeightManager.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              const Text('Your sold amount (current month)'),
              SizedBox(
                height: 15.h,
              ),
              Text('$currentMonth',
                style: TextStyle(
                    color: ColorManager.buttonColor.withAlpha(200), fontSize: 28.sp,fontWeight: FontWeightManager.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('Last Month :$lastMonth'),
            ],
          ),
        ));
  }
}
