// ignore_for_file: must_be_immutable

import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';
import '../../../global_presentation/global_widgets/primary_textfield.dart';
import '../../../layout/cubit/cubit.dart';

class PaymentChangeEmailWidget extends StatelessWidget {

  var emailController = TextEditingController();

  PaymentChangeEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit,AlshorjahStates>(builder: (context, state) {
      var cubit = AlshorjahCubit.get(context);
      return Container(
        height: 280.h,
        width: double.infinity,
        color: ColorManager.grey.withAlpha(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15),
              child: Text(
                'Change your email ',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeightManager.bold),
              ),
            ),
            const MySeparator(),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Your Email',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            GlobalTextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              hintText: cubit.userData.email,
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40.h,
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: ColorManager.grey.withAlpha(100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Verify Email',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  width: 150.w,
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
                      'Update Email',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }, listener: (context, state) {});
  }
}
