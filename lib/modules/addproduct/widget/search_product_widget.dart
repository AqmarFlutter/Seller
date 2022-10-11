// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_widgets/primary_textfield.dart';

class SearchProductWidget extends StatelessWidget {

  var searchController = TextEditingController();

   SearchProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 400.h,
      color: ColorManager.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('All Products',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          GlobalTextField(
            keyboardType: TextInputType.name,
            controller:searchController ,
            hintText: 'Search product',
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
              Text('Base Price',
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
    );
  }
}
