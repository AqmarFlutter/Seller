// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';

class BannerSettingWidget extends StatelessWidget {

  const BannerSettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280.h,
      color: ColorManager.grey.withAlpha(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              'Banner Settings',
              style: TextStyle(
                  fontSize: 20.sp, fontWeight: FontWeightManager.bold),
            ),
          ),
          const MySeparator(),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Banner(1500×450)',
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 40.h,
              width: double.infinity,
              color: ColorManager.white,
              child: Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 100.w,
                    color: ColorManager.grey,
                    child: Center(
                      child: Text(
                        'Browse',
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Center(
                      child: Text(
                        'Choose file',
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'We had to limit height to maintian consistancy.In some device both side of the banner might be cropped for height limitation.',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 35.h,
                width: 130.w,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
