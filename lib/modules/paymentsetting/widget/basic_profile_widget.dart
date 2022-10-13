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

class BasicProfileWidget extends StatelessWidget {


  BasicProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit,AlshorjahStates>(
      listener: (context,state){},
      builder:(context,state)
      {
        var cubit = AlshorjahCubit.get(context);
        return Container(
          width: double.infinity,
          height: 550.h,
          color: ColorManager.grey.withAlpha(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  'Basic Info',
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
                  'Your Name',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.name,
                controller: cubit.nameController,
                hintText: cubit.userData.name,
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Your Phone',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.phone,
                controller: cubit.phoneController,
                hintText: cubit.userData.email,
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Photo',
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
                  'Your Password',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.name,
                obscureText: true,
                controller: cubit.newPasswordController,
                hintText: 'New Password',
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.name,
                controller: cubit.confirmPasswordController,
                hintText: 'Confirm Password',
              ),
            ],
          ),
        );
      }
    );
  }
}
