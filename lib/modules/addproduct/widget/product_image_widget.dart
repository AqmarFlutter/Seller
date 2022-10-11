import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({Key? key}) : super(key: key);

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
              'Product Images',
              style: TextStyle(
                  fontSize: 18.sp, fontWeight: FontWeightManager.bold),
            ),
          ),
          const MySeparator(),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Gallery Images',
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
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Thumbnail Image(290×300)',
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
        ],
      ),
    );
  }
}
