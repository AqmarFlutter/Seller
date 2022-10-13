// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class ProductWidget extends StatelessWidget {
  String? title;
  String? num;
  String? image;

  ProductWidget({Key? key, this.title, this.image, this.num, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.h,
      color: Colors.blue[600],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                        color: ColorManager.blue.withAlpha(200),
                        fontSize: 15.sp),
                  ),
                  Text(
                    '$num',
                    style: TextStyle(
                      color: ColorManager.white,
                      fontWeight: FontWeightManager.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Image.asset(
              image!,
              height: 60.sp,
              color: ColorManager.blue.withAlpha(100),
            ),
          ],
        ),
      ),
    );
  }
}
