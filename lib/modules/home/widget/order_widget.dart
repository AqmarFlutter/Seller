// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 380.h,
        color: Colors.grey.withAlpha(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Orders',
                style: TextStyle(
                    color: ColorManager.buttonColor.withAlpha(200),
                    fontSize: 18.sp,
                    fontWeight: FontWeightManager.medium),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                'This Month',
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/newOrder.png',
                    height: 35.h,
                    width: 40.w,
                    color: ColorManager.buttonColor.withAlpha(200),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Orders',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 15.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 20.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/cancel.png',
                    height: 35.h,
                    width: 40.w,
                    color: ColorManager.buttonColor.withAlpha(200),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cancelled',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 15.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 20.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/on-delivery.png',
                    height: 35.h,
                    width: 40.w,
                    color: ColorManager.buttonColor.withAlpha(200),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'on delivery',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 15.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 20.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/delivered.png',
                    height: 35.h,
                    width: 40.w,
                    color: ColorManager.buttonColor.withAlpha(200),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivered',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 15.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            color: ColorManager.buttonColor.withAlpha(200),
                            fontSize: 20.sp,
                            fontWeight: FontWeightManager.medium),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
