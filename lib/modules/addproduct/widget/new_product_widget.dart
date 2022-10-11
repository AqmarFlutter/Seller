// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../views/add_new_product_screen.dart';

class NewProductWidget extends StatelessWidget {

  const NewProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddNewProductScreen()));
      },
      child: Container(
        width: double.infinity,
        height: 150.h,
        color: ColorManager.white,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              child: Icon(Icons.add,color: ColorManager.white,size: 50.sp,),
              radius: 40.sp,
              backgroundColor: ColorManager.grey,
            ),
            Text('Add New Product',
              style: TextStyle(
                fontSize: 18.sp,
                color: ColorManager.buttonColor.withAlpha(200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
