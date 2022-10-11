import 'package:alshorjah_app/global_presentation/global_features/color_manager.dart';
import 'package:alshorjah_app/global_presentation/global_features/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatelessWidget {

  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: double.infinity,
              color: ColorManager.grey.withAlpha(50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text('Payment History',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeightManager.bold
                    ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
