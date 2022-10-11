// // ignore_for_file: must_be_immutable
//
// import 'package:alshorjah_app/global_presentation/network/local/cache.dart';
// import 'package:alshorjah_app/layout/cubit/cubit.dart';
// import 'package:alshorjah_app/layout/cubit/state.dart';
// import 'package:alshorjah_app/layout/views/layout_screen.dart';
// import 'package:alshorjah_app/modules/login/views/login_screen.dart';
// import 'package:buildcondition/buildcondition.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../constant.dart';
// import '../../../global_presentation/global_features/color_manager.dart';
// import '../../../global_presentation/global_features/font_manager.dart';
// import '../../../global_presentation/global_widgets/primary_button.dart';
// import '../../../global_presentation/global_widgets/primary_textfield.dart';
//
// class RegisterScreen extends StatelessWidget {
//   RegisterScreen({Key? key}) : super(key: key);
//   var nameController = TextEditingController();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var confirmPasswordController = TextEditingController();
//   IconData suffix = Icons.visibility_outlined;
//   bool isPassword = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
//         builder: (context, state) {
//       var cubit = AlshorjahCubit.get(context);
//       return Scaffold(
//         body: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             padding: const EdgeInsets.symmetric(horizontal: 15.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     top: 100,
//                   ),
//                   child: Text(
//                     'Create an account',
//                     style: TextStyle(
//                       color: ColorManager.black,
//                       fontSize: 23.sp,
//                       fontWeight: FontWeightManager.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 GlobalTextField(
//                   keyboardType: TextInputType.name,
//                   controller: nameController,
//                   hintText: 'Full Name',
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 if (cubit.insteadTextFormField)
//                   GlobalTextField(
//                     keyboardType: TextInputType.emailAddress,
//                     controller: emailController,
//                     hintText: 'Email',
//                   ),
//                 if (!cubit.insteadTextFormField)
//                   GlobalTextField(
//                     keyboardType: TextInputType.emailAddress,
//                     controller: emailController,
//                     hintText: 'Phone',
//                   ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       cubit.insteadTextFormField
//                           ? TextButton(
//                               onPressed: () {
//                                 cubit.changeTextForm();
//                               },
//                               child: Text(
//                                 'Use Phone Instead',
//                                 style: TextStyle(
//                                   color: ColorManager.black,
//                                 ),
//                               ),
//                             )
//                           : TextButton(
//                               onPressed: () {
//                                 cubit.changeTextForm();
//                               },
//                               child: Text(
//                                 'Use Email Instead',
//                                 style: TextStyle(
//                                   color: ColorManager.black,
//                                 ),
//                               ),
//                             ),
//                     ],
//                   ),
//                 ),
//                 GlobalTextField(
//                   keyboardType: TextInputType.visiblePassword,
//                   controller: cubit.passwordController,
//                   onChanged: (value) {
//                     return cubit.saveText(value);
//                   },
//                   onTab: () {},
//                   obscureText: cubit.isPassword,
//                   hintText: 'Password',
//                   suffixIcon: cubit.suffix != null
//                       ? IconButton(
//                           onPressed: () {
//                             cubit.changeShowPassword();
//                           },
//                           icon: Icon(
//                             cubit.suffix,
//                             color: Colors.deepOrange,
//                           ),
//                         )
//                       : null,
//                   // isPassword: suffix == isPassword ? true : false,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 GlobalTextField(
//                   keyboardType: TextInputType.visiblePassword,
//                   controller: cubit.passwordConfirmController,
//                   onChanged: (value) {
//                     return cubit.saveText(value);
//                   },
//                   onTab: () {},
//                   obscureText: cubit.isPassword2,
//                   hintText: 'Password',
//                   suffixIcon: cubit.suffix2 != null
//                       ? IconButton(
//                           onPressed: () {
//                             cubit.changeShowPasswordConfirm();
//                           },
//                           icon: Icon(
//                             cubit.suffix2,
//                             color: Colors.deepOrange,
//                           ),
//                         )
//                       : null,
//                   // isPassword: suffix == isPassword ? true : false,
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 BuildCondition(
//                   condition: state is! ShaorjahLoadingRegister,
//                   builder: (context) => PrimaryButton(
//                     title: 'Create Account',
//                     onPressed: () {
//                       cubit.userRegister(
//                         emailOrPhone: emailController.text,
//                         name: nameController.text,
//                         password: cubit.passwordController.text,
//                         confirmPassword: cubit.passwordConfirmController.text,
//                       );
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   height: 60.h,
//                 ),
//                 Text(
//                   'or Login With',
//                   style: TextStyle(
//                     color: ColorManager.black.withAlpha(100),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Image.asset(
//                         'assets/images/facebook.png',
//                         height: 35.h,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10.w,
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Image.asset(
//                         'assets/images/google-plus.png',
//                         height: 35.h,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50.h,
//                 ),
//                 Text(
//                   'Already have an account?',
//                   style: TextStyle(
//                     color: ColorManager.black.withAlpha(100),
//                   ),
//                 ),
//                 TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => LoginScreen()));
//                     },
//                     child: const Text(
//                       'Log in',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                       ),
//                     )),
//               ],
//             ),
//           ),
//         ),
//       );
//     }, listener: (context, state) {
//       if (state is ShaorjahSuccessRegister) {
//         CacheHelper.saveData(
//           key: 'token',
//           value: state.shaorjahRegisterModel.accessToken,
//         ).then((value) {
//           token = state.shaorjahRegisterModel.accessToken!;
//           navigatorFinished(context, LayoutScreen());
//         });
//       }
//     });
//   }
// }
