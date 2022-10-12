// ignore_for_file: must_be_immutable

import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';
import '../../../global_presentation/global_widgets/primary_textfield.dart';

class BasicInfoWidget extends StatelessWidget {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var metaController = TextEditingController();
  var descriptionController = TextEditingController();

  BasicInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit,AlshorjahStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AlshorjahCubit.get(context);
          return Container(
            width: double.infinity,
            height: 650.h,
            color: ColorManager.grey.withAlpha(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    'Shop Name',
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
                  controller: nameController,
                  hintText: cubit.shopSettingsModel.data![0].name,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Shop Logo',
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
                          onTap: () {},
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
                    'Shop Phone',
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
                  controller: phoneController,
                  hintText: 'Shop Phone',
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Shop Address',
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
                  controller: addressController,
                  hintText: cubit.shopSettingsModel.data![0].address,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Meta Title',
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
                  controller: metaController,
                  hintText: 'Meta Title',
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Meta description',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GlobalTextField(
                  keyboardType: TextInputType.multiline,
                  controller: descriptionController,
                  hintText: 'Meta description',
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
                )
              ],
            ),
          );
        },
        );
  }
}
