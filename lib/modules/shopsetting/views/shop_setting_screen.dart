// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../widget/banner_setting_widget.dart';
import '../widget/basic_info_widget.dart';
import '../widget/social_media_widget.dart';

class ShopSettingScreen extends StatelessWidget {

  const ShopSettingScreen({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: ColorManager.black,
            )),
        title: Text(
          'Shop Settings',
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.blue,
              fontWeight: FontWeightManager.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            children: [
              BasicInfoWidget(),
              SizedBox(
                height: 15.h,
              ),
              const BannerSettingWidget(),
              SizedBox(
                height: 15.h,
              ),
              SocialMediaWidget()
            ],
          ),
        ),
      ),
    );
  }
}
