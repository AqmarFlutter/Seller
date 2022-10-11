// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class DigitalProductScreen extends StatelessWidget {

  const DigitalProductScreen({Key? key}) : super(key: key);

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
          'Digital Products',
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
            InkWell(
              onTap: () {},
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
                    Text('Add New Digital Product',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: ColorManager.buttonColor.withAlpha(200),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              height: 300.h,
              color: ColorManager.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('All Products',
                      style: TextStyle(
                        fontSize: 18.sp,
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
                        Text('Name',
                          style: TextStyle(
                            fontSize: 15.sp,
                          ),
                        ),
                        Text('Options',
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
            ),
          ],
        ),
      ),
    );
  }
}
