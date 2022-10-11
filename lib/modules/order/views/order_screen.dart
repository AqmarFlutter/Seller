import 'package:alshorjah_app/global_presentation/global_features/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:select_form_field/select_form_field.dart';
import '../../../global_presentation/global_features/font_manager.dart';

final List<Map<String, dynamic>> items = [
  {
    'value': 'filterValue',
    'label': 'Filter by payment status',
  },
  {
    'value': 'paidValue',
    'label': 'paid',
  },
  {
    'value': 'un-paidValue',
    'label': 'Un-paid',
  },
];
final List<Map<String, dynamic>> items2 = [
  {
    'value': 'filterValue',
    'label': 'Filter by Deliver status',
  },
  {
    'value': 'pendingValue',
    'label': 'pending',
  },
  {
    'value': 'confirmedValue',
    'label': 'confirmed',
  },
  {
    'value': 'on-deliveryValue',
    'label': 'on delivery',
  },
  {
    'value': 'deliveredValue',
    'label': 'Delivered',
  },
];

class OrderScreen extends StatelessWidget {

  var typeOrderController = TextEditingController();
  OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 250.h,
                width: double.infinity,
                color: ColorManager.grey.withAlpha(50),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        'Orders',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeightManager.bold),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SelectFormField(
                        decoration: InputDecoration(
                          suffixIconColor: ColorManager.blue,
                          border: const OutlineInputBorder(),
                          hintText: 'Filter by payment status',
                          suffixIcon: Icon(Icons.arrow_drop_down,
                              size: 25.sp, color: Colors.blue),
                        ),
                        type: SelectFormFieldType.dropdown,
                        // or can be dialog
                        initialValue: 'filter',
                        items: items,
                        onChanged: (val) => print(val),
                        onSaved: (val) => print(val),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SelectFormField(
                        decoration: InputDecoration(
                          suffixIconColor: ColorManager.blue,
                          border: const OutlineInputBorder(),
                          hintText: 'Filter by Deliver status',
                          suffixIcon: Icon(Icons.arrow_drop_down,
                              size: 25.sp, color: Colors.blue),
                        ),
                        type: SelectFormFieldType.dropdown,
                        // or can be dialog
                        initialValue: 'filter',
                        items: items2,
                        onChanged: (val) => print(val),
                        onSaved: (val) => print(val),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Type Order code & hit Enter',

                        ),
                        keyboardType: TextInputType.name,
                        controller: typeOrderController,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
