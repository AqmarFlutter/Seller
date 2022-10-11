// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class SalesWidget extends StatelessWidget {

  const SalesWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200.h,
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Sales Stat',
                style: TextStyle(
                    color: ColorManager.buttonColor.withAlpha(200), fontSize: 20.sp,fontWeight: FontWeightManager.bold),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Image.asset('assets/images/sales_stat.png',
            height: 120.h,
              width: 350.w,
              color: Colors.black87,
              fit: BoxFit.contain,
            ),

          ],
        ));
  }
}
