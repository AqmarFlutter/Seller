// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../widget/product_image_widget.dart';
import '../widget/product_information_widget.dart';




class AddNewProductScreen extends StatelessWidget {

  const AddNewProductScreen({Key? key}) : super(key: key);

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
          'Add Your Product',
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.blue,
              fontWeight: FontWeightManager.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
          child: Column(
            children: [
              ProductInformationWidget(),
              SizedBox(
                height: 20.h,
              ),
              const ProductImageWidget()
            ],
          ),
        ),
      ),
    );
  }
}
