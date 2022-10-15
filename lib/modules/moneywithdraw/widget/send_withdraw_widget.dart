// ignore_for_file: sort_child_properties_last

import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';

class SendWithdrawWidget extends StatelessWidget {
  const SendWithdrawWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AlshorjahCubit.get(context);
        return InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => cubit.openDialog(context) as Widget,
            );
          },
          child: Container(
            width: double.infinity,
            height: 130.h,
            color: ColorManager.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                CircleAvatar(
                  child: Icon(
                    Icons.add,
                    color: ColorManager.white,
                    size: 50.sp,
                  ),
                  radius: 40.sp,
                  backgroundColor: ColorManager.grey,
                ),
                Text(
                  'Send Withdraw Requset',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: ColorManager.buttonColor.withAlpha(200),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
