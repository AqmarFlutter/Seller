import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../widget/basic_profile_widget.dart';
import '../widget/payment_address_widget.dart';
import '../widget/payment_changeemail_widget.dart';
import '../widget/payment_profile_widget.dart';

class PaymentSettingScreen extends StatelessWidget {
  const PaymentSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
      builder: (context, state) {
        var cubit = AlshorjahCubit.get(context);
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
              'Manage Profile',
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.blue,
                  fontWeight: FontWeightManager.bold),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  BasicProfileWidget(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const PaymentProfileWidget(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 160.w,
                        child: ElevatedButton(
                          onPressed: () {
                            cubit.updateProfile(
                              name: cubit.nameController.text,
                              email: cubit.emailController.text,
                              password: cubit.newPasswordController.text,
                              confirmPassword:
                                  cubit.confirmPasswordController.text,
                              cashPayment: cubit.cashStatus,
                              bankPayment: cubit.bankStatus,
                              bankName: cubit.bankNameController.text,
                              bankAccountName:
                                  cubit.bankAccountNameController.text,
                              bankAccountNumber:
                                  cubit.bankAccountNumberController.text,
                              bankRoutingNumber:
                                  cubit.bankRoutingNumberController.text,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.h),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Update Profile',
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
                    height: 15.h,
                  ),
                  const PaymentAddressWidget(),
                  SizedBox(
                    height: 15.h,
                  ),
                  PaymentChangeEmailWidget()
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
