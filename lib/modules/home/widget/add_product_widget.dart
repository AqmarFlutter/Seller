// ignore_for_file: must_be_immutable

import 'package:alshorjah_app/modules/addproduct/views/add_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class AddProductWidget extends StatelessWidget {

  const AddProductWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>const AddProductScreen()
            )
        );
      },
      child: Container(
          width: double.infinity,
          height: 180.h,
          color: Colors.grey[100],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0,),
                child: Text('Add New Product',
                  style: TextStyle(
                      color: ColorManager.buttonColor.withAlpha(200), fontSize: 20.sp,fontWeight: FontWeightManager.bold),
                ),
              ),
              Image.asset('assets/images/add_product.png',
                fit: BoxFit.contain,
                height: 50.h,
                color: ColorManager.buttonColor.withAlpha(200),
              ),
            ],
          )),
    );
  }
}
