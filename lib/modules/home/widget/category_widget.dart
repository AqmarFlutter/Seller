// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';

class CategoryWidget extends StatelessWidget {

  const CategoryWidget({Key? key, required this.name, required this.count, required this.name2, required this.count2,}) : super(key: key);

  final String? name;
  final int? count;
  final String? name2;
  final int? count2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 180.h,
        color: Colors.grey.withAlpha(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Category wise product count',
                style: TextStyle(
                    color: ColorManager.buttonColor.withAlpha(200), fontSize: 18.sp,fontWeight: FontWeightManager.medium),
              ),
              SizedBox(
                height: 15.h,
              ),
              const MySeparator(),
              SizedBox(
                height: 30.h,
              ),
              Row(
               children: [
                 Text(name!,
                   style: TextStyle(
                       color: ColorManager.buttonColor.withAlpha(200), fontSize: 13.sp),
                 ),
                 const Spacer(),
                 Text('$count',style: TextStyle(color: ColorManager.buttonColor.withAlpha(200)),),
               ],
             ),
              SizedBox(
                height: 15.h,
              ),
              Row(
               children: [
                 Text(name2!,
                   style: TextStyle(
                       color: ColorManager.buttonColor.withAlpha(200), fontSize: 13.sp),
                 ),
                 const Spacer(),
                 Text('$count2',style: TextStyle(color: ColorManager.buttonColor.withAlpha(200)),),
               ],
             ),
            ],
          ),
        ));
  }
}
