// ignore_for_file: must_be_immutable

import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';
import '../../../global_presentation/global_widgets/primary_textfield.dart';

class PaymentProfileWidget extends StatefulWidget {
  const PaymentProfileWidget({Key? key}) : super(key: key);

  @override
  State<PaymentProfileWidget> createState() => _PaymentProfileWidgetState();
}

class _PaymentProfileWidgetState extends State<PaymentProfileWidget> {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
      builder: (context, state) {
        var cubit = AlshorjahCubit.get(context);
        return Container(
          width: double.infinity,
          height: 600.h,
          color: ColorManager.grey.withAlpha(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  'Payment Setting',
                  style: TextStyle(
                      fontSize: 18.sp, fontWeight: FontWeightManager.bold),
                ),
              ),
              const MySeparator(),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Cash Payment',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    FlutterSwitch(
                      width: 60.w,
                      height: 25.h,
                      toggleSize: 20.sp,
                      value: cubit.cashStatus,
                      borderRadius: 30.0,
                      onToggle: (val) {
                        setState(() {
                          cubit.cashStatus = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Bank Payment',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    FlutterSwitch(
                      width: 60.w,
                      height: 25.h,
                      toggleSize: 20.sp,
                      value: cubit.bankStatus,
                      borderRadius: 30.0,
                      onToggle: (val) {
                        setState(() {
                          cubit.bankStatus = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Bank Name',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.name,
                controller: cubit.bankNameController,
                hintText: 'Bank Name',
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Bank Account Name',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.name,
                controller: cubit.bankAccountNameController,
                hintText: 'Bank Account Name',
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Bank Account Number',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.number,
                controller: cubit.bankAccountNumberController,
                hintText: 'Bank Account Number',
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Bank Routing Number',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GlobalTextField(
                keyboardType: TextInputType.number,
                controller: cubit.bankRoutingNumberController,
                hintText: 'Bank Routing Number',
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
