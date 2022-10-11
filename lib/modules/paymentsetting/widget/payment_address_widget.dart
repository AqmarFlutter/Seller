import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';

class PaymentAddressWidget extends StatelessWidget {

  const PaymentAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: double.infinity,
      color: ColorManager.grey.withAlpha(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 15),
            child: Text(
              'Address',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeightManager.bold),
            ),
          ),
          const MySeparator(),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Container(
              height: 100.h,
              width: 300.w,
              color: ColorManager.grey.withAlpha(80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 35.sp,
                      )),
                  const Text('Add New Address')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
