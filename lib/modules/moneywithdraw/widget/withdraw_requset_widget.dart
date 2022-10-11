import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';

class WithdrawRequsetWidget extends StatelessWidget {

  const WithdrawRequsetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.h,
      color: ColorManager.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Withdraw Requset history',
            style: TextStyle(
              fontSize: 18.sp,
            ),
            ),
            SizedBox(
              height: 20.h,
            ),
           const MySeparator(),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('#',
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
                Text('Data',
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
                 Text('Amount',
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const MySeparator(),
            SizedBox(
              height: 30.h,
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
    );
  }
}
