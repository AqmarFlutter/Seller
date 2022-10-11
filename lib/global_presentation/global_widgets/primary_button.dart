import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../global_features/font_manager.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Color? color;
  final Color? fontColor;
  final double? fontSize, width;
  final FontWeight fontWeight;
  const PrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.color,
      this.width,
      this.fontSize = 13,
      this.fontWeight = FontWeightManager.bold,
      this.fontColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.h),
            ),
            elevation: 0,
          ),
          child: Text(
            title!,
            style: TextStyle(
            fontSize: fontSize!.sp,
            color: fontColor,
            fontWeight: fontWeight,
          ),

          ),
        ),
      ),
    );
  }
}
