import 'package:alshorjah_app/global_presentation/global_features/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../widget/pending_balance_widget.dart';
import '../widget/send_withdraw_widget.dart';
import '../widget/withdraw_requset_widget.dart';

class MoneyWithdrawScreen extends StatelessWidget {
  const MoneyWithdrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,
            color: ColorManager.black,
            )),
        title: Text('Money Withdraw',
          style:TextStyle(
              fontSize: 20.sp,
              color:Colors.blue,
              fontWeight: FontWeightManager.bold
          ) ,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                const BendingBalanceWidget(),
                SizedBox(
                  height: 15.h,
                ),
                const SendWithdrawWidget(),
                SizedBox(
                  height: 15.h,
                ),
               const WithdrawRequsetWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
