// ignore_for_file: must_be_immutable

import 'package:alshorjah_app/modules/shopsetting/views/shop_setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class ShopSettingWidget extends StatelessWidget {
  const ShopSettingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 220.h,
        color: Colors.blue[50],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
              ),
              child: Text(
                'Shop Setting',
                style: TextStyle(
                    color: ColorManager.buttonColor.withAlpha(200),
                    fontSize: 20.sp,
                    fontWeight: FontWeightManager.bold),
              ),
            ),
            Image.asset(
              'assets/images/shop_setting.png',
              fit: BoxFit.contain,
              height: 40.h,
              color: ColorManager.buttonColor.withAlpha(200),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 40.h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const ShopSettingScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Go to setting',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
