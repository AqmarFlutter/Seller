// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/primary_button.dart';
import '../../../global_presentation/global_widgets/primary_textfield.dart';
import '../../login/views/login_screen.dart';



class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                      right: 110
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeightManager.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height:10.h ,
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 65),
                     child: Text('Enter your email address to recover your\n password',
                  style: TextStyle(
                      color: ColorManager.black.withAlpha(150)
                  ),
                  ),
                   ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GlobalTextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: 'Email or Phone',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  PrimaryButton(
                    title: 'Send Password Reset Link',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: ()
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()
                                  )
                              );
                            },
                            child: Text(
                              'Back to Login',
                              style: TextStyle(
                                color: ColorManager.black.withAlpha(100),
                              ),
                            )),
                      ],
                    ),
                  ),
                ]))));
  }
}
