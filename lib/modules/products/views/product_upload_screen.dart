import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class ProductUploadScreen extends StatelessWidget {

  const ProductUploadScreen({Key? key}) : super(key: key);

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
          'Bulk Products Upload ',
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.blue,
              fontWeight: FontWeightManager.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Container(
                height: 370.h,
                width: double.infinity,
                color: ColorManager.grey.withAlpha(30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        color: ColorManager.blue.withAlpha(200),
                        child: Column(
                          children: const [
                            ListTile(title: Text('1. Download the skeleton file and fill it with data.: '),)
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        color: ColorManager.blue.withAlpha(200),
                        child: Column(
                          children: const [
                            ListTile(title: Text('2. You can download the example file to understand how the data must be filled.: '),)
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        color: ColorManager.blue.withAlpha(200),
                        child: Column(
                          children: const [
                            ListTile(title: Text('3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.: '),)
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        color: ColorManager.blue.withAlpha(200),
                        child: Column(
                          children: const [
                            ListTile(title: Text('4. After uploading products you need to edit them and set products images and choices. '),)
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 180.w,
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
                                'Download CSV',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
               SizedBox(
                 height: 20.h,
               ),
               Container(
                height: 280.h,
                width: double.infinity,
                color: ColorManager.grey.withAlpha(30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        color: ColorManager.blue.withAlpha(200),
                        child: Column(
                          children: const [
                            ListTile(title: Text('1. Category and Brand should be in numerical id.:'),)
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        color: ColorManager.blue.withAlpha(200),
                        child: Column(
                          children: const [
                            ListTile(title: Text(' 2. You can download the pdf to get Category and Brand id.: '),)
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 180.w,
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
                                'Download Category',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 180.w,
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
                                'Download Brand',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                 height: 20.h,
               ),
               Container(
                height: 260.h,
                width: double.infinity,
                color: ColorManager.grey.withAlpha(30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
                  child: Column(
                    children: [
                      Text('Upload CSV File',
                      style: TextStyle(
                        fontSize: 18.sp,

                      ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                       Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Text('csv',
                        style: TextStyle(
                          fontSize: 15.sp
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
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
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 150.w,
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
                                'Upload CSV',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeightManager.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
