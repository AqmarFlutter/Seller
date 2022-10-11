// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:select_form_field/select_form_field.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';
import '../../../global_presentation/global_widgets/primary_textfield.dart';

final List<Map<String, dynamic>> items = [
  {
    'value': '1',
    'label': 'Women Clothing & Fashion',
  },
  {
    'value': '2',
    'label': '--Hot Categories',
  },
  {
    'value': '3',
    'label': '--Dresses',
  },
  {
    'value': '4',
    'label': '--Tops & sets',
  },
  {
    'value': '5',
    'label': '--Bottom',
  },
  {
    'value': '6',
    'label': '--Lingerie',
  },
  {
    'value': '7',
    'label': 'Men Clothing & Fashion',
  },

];


class ProductInformationWidget extends StatelessWidget {

  var nameController = TextEditingController();
  var unitController = TextEditingController();
  var minimumQtyController = TextEditingController();
  var tagsController = TextEditingController();

  ProductInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 620.h,
      color: ColorManager.grey.withAlpha(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              'Product Information',
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
              'Product Name',
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
            controller: nameController,
            hintText: 'Product Name',
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Category',
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
            child: SelectFormField(
              decoration: InputDecoration(
                suffixIconColor: ColorManager.blue,
                border: const OutlineInputBorder(),
                hintText: 'Women Clothing & Fashion',
                suffixIcon: Icon(Icons.arrow_drop_down,
                    size: 25.sp, color: Colors.blue),
              ),
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: '1',
              items: items,
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Brand',
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
            child: SelectFormField(
              decoration: InputDecoration(
                suffixIconColor: ColorManager.blue,
                border: const OutlineInputBorder(),
                hintText: 'Women Clothing & Fashion',
                suffixIcon: Icon(Icons.arrow_drop_down,
                    size: 25.sp, color: Colors.blue),
              ),
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: '1',
              items: items,
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Unit',
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
            controller: unitController,
            hintText: 'Unit (e.g KG , Pc etc)',
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Minimum Purchase Qty',
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
            controller: minimumQtyController,
            hintText: '',
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Tags',
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
            controller: tagsController,
            hintText: 'Type and hit enter to add a tag',
          ),
        ],
      ),
    );
  }
}
