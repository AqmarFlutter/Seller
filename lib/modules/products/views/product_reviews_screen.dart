// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class ProductReviewsScreen extends StatelessWidget {

  const ProductReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          'Product Reviews',
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.blue,
              fontWeight: FontWeightManager.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300.h,
              color: ColorManager.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text('Product Reviews',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('#',
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      Text('Product',
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      Text('Rating',
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: Image.asset('assets/images/sad.png',
                      height: 40.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: Text('Nothing found',
                      style: TextStyle(
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
