import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            'Language',
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.blue,
                fontWeight: FontWeightManager.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                     Text(
                      "English",
                       style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeightManager.bold),
                    ),
                    const Spacer(),
                    Radio(
                      value: false,
                      groupValue: false,
                      onChanged: (value) {
                        // ShopCubit.get(context).changeAppMode(value: value);
                      },
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                     Text(
                      "Arabic",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeightManager.bold
                      ),
                    ),
                    const Spacer(),
                    Radio(
                      value: true,
                      groupValue: false,
                      onChanged: (value) {
                        // ShopCubit.get(context).changeAppMode(value: value);
                      },
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
