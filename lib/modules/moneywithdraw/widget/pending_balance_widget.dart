import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class BendingBalanceWidget extends StatelessWidget {
  const BendingBalanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
        builder: (context, state) {
          var cubit = AlshorjahCubit.get(context);
          return Container(
            width: double.infinity,
            height: 130.h,
            color: ColorManager.pink,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  // child: Image.asset('assets/images/user.png',
                  // height: 30.h,
                  // ),
                  radius: 20.sp,
                  backgroundColor: ColorManager.grey,
                ),
                Text(
                  '\$${cubit.withdrawModel.meta!.total}.0',
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeightManager.bold,
                      color: ColorManager.white),
                ),
                Text(
                  'pending Balance',
                  style: TextStyle(fontSize: 15.sp, color: ColorManager.grey),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
