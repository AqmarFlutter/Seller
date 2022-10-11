// ignore_for_file: must_be_immutable

import 'package:alshorjah_app/modules/moneyWithdraw/views/money_withdraw_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class MoneyWithdrawWidget extends StatelessWidget {

  const MoneyWithdrawWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MoneyWithdrawScreen()
            )
        );
      },
      child: Container(
          width: double.infinity,
          height: 180.h,
          color: Colors.blue[50],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0,),
                child: Text('Money Withdraw',
                  style: TextStyle(
                      color: ColorManager.buttonColor.withAlpha(200), fontSize: 20.sp,fontWeight: FontWeightManager.bold),
                ),
              ),
              Image.asset('assets/images/money_withdraw.png',
                fit: BoxFit.contain,
                height: 50.h,
                color: ColorManager.buttonColor.withAlpha(200),
              ),
            ],
          )),
    );
  }
}
