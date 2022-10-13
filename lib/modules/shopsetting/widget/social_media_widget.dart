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

class SocialMediaWidget extends StatelessWidget {
  SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
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
                    'Social Media Link',
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
                    'Facebook',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GlobalTextField(
                  keyboardType: TextInputType.url,
                  controller: cubit.facebookController,
                  hintText: cubit.shopSettingsModel.facebook != null
                      ? cubit.shopSettingsModel.facebook
                      : 'Facebook',
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GlobalTextField(
                  keyboardType: TextInputType.url,
                  controller: cubit.instagramController,
                  hintText: cubit.shopSettingsModel.instagram != null
                      ? cubit.shopSettingsModel.instagram
                      : 'Instagram',
                ),
                SizedBox(
                  height: 3.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'insert link with https',
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Twitter',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GlobalTextField(
                  keyboardType: TextInputType.url,
                  controller: cubit.twitterController,
                  hintText: cubit.shopSettingsModel.twitter != null
                      ? cubit.shopSettingsModel.twitter
                      : 'Twitter',
                ),
                SizedBox(
                  height: 3.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'insert link with https',
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Google',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GlobalTextField(
                  keyboardType: TextInputType.url,
                  controller: cubit.googleController,
                  hintText: cubit.shopSettingsModel.google != null
                      ? cubit.shopSettingsModel.google
                      : 'Google',
                ),
                SizedBox(
                  height: 3.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'insert link with https',
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Youtube',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GlobalTextField(
                  keyboardType: TextInputType.url,
                  controller: cubit.youtubeController,
                  hintText: cubit.shopSettingsModel.youtube != null
                      ? cubit.shopSettingsModel.youtube
                      : 'Youtube',
                ),
                SizedBox(
                  height: 3.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'insert link with https',
                  ),
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
                          onPressed: () {
                            cubit.updateShopSocial(
                              facebook: cubit.facebookController.text,
                              instagram: cubit.instagramController.text,
                              youtube: cubit.youtubeController.text,
                              google: cubit.googleController.text,
                              twitter: cubit.twitterController.text,
                            );
                          },
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
        listener: (context, state) {});
  }
}
