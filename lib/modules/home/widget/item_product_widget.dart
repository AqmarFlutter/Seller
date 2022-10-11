// ignore_for_file: must_be_immutable, avoid_print

import 'package:alshorjah_app/global_presentation/global_features/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';

class ItemProductWidget extends StatelessWidget {
  const ItemProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 220.h,
          width: 150.w,
          color: ColorManager.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/product1.png',
                fit: BoxFit.cover,
                height: 150.h,
                width: 250.w,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15, horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      '\$100.0',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '\$90.0',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorManager.buttonColor.withAlpha(200),
                          fontWeight: FontWeightManager.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5),
                child: RatingBar.builder(
                  itemSize: 12.sp,
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:5),
                child: Text('بدلة ماركة',
                style: TextStyle(
                  fontWeight: FontWeightManager.bold
                ),
                ),
              )
            ],
          ),
        );
  }
}
