// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global_features/color_manager.dart';

class GlobalTextField extends StatelessWidget {
  TextEditingController controller;
  TextInputType keyboardType;
  Color? cursorColor =ColorManager.primary;
  double? cursorHeight;
  IconData? prefixIcon;
  Color? prefixIconColor = ColorManager.primary;
  double? prefixIconSize;
  Widget? suffixIcon;
  Color? suffixIconColor = ColorManager.primary;
  double? suffixIconSize = 20;
  String? labelText;
  TextStyle? labelStyle;
  TextStyle? floatingLabelStyle;
  String? hintText;
  TextStyle? hintStyle;
  InputBorder? border;
  InputBorder? focusedBorder;
  int? maxLine;
  int? maxLength;
  BorderRadius? borderRadius;
  double? horizontalPadding;
  String? validateMessage;
  bool? obscureText;
  bool? isPassword = false;
  FocusNode? focusNode;
  Function? onCompletel;
  Function? onChanged;
  Function()? onTab;
  TextInputAction? textInputAction;

  GlobalTextField({
    this.isPassword,
    required this.controller,
    required this.keyboardType,
    this.cursorColor,
    this.cursorHeight,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixIconSize,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconSize,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.border,
    this.focusedBorder,
    this.maxLine,
    this.borderRadius,
    this.maxLength,
    this.floatingLabelStyle,
    this.horizontalPadding,
    this.validateMessage,
    this.obscureText,
    this.focusNode,
    this.onCompletel,
    this.onChanged,
    this.onTab,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40.h ,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 15.0),
        child: TextFormField(
          onTap: onTab,
          controller: controller,
          onChanged: (value){onChanged;},
          keyboardType: keyboardType,
          cursorColor: cursorColor ?? ColorManager.primary,
          cursorHeight: cursorHeight ?? 25,
          maxLines: maxLine ?? 1,
          obscureText: obscureText ?? false,
          focusNode: focusNode,
          textInputAction: textInputAction ?? TextInputAction.done,

          //maxLength: maxLength ?? 1000,
          validator: (String? value) {
            if (value!.isEmpty) {
              return validateMessage ?? 'Fill this field';
            }
            return null;
          },
          decoration: InputDecoration(

            // prefixIcon: Icon(
            //   prefixIcon,
            //   size: prefixIconSize ?? 25,
            //   color: prefixIconColor ?? ColorManager.primary,
            // ),
            prefixIconColor: prefixIconColor,
            floatingLabelStyle: floatingLabelStyle ??
                 TextStyle(
                  color: ColorManager.primary,
                ),
            labelText: labelText,
            labelStyle: labelStyle,
            hintText: hintText,
            hintStyle: hintStyle,
            suffixIcon: suffixIcon,
            border: border ??
                const OutlineInputBorder(),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderSide:  BorderSide(color: ColorManager.red,),
                ),
          ),
        ),
      ),
    );
  }
}
