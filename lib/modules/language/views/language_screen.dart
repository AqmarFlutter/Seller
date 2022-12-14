import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

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
                            cubit.languageModel.data![0].name as String,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeightManager.bold),
                          ),
                          const Spacer(),
                          Radio(
                            value: false,
                            groupValue: false,
                            onChanged: (value) {
                               cubit.languageModel.data![0].isDefault;
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
                            cubit.languageModel.data![1].name as String,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeightManager.bold),
                          ),
                          const Spacer(),
                          Radio(
                            value: true,
                            groupValue: false,
                            onChanged: (value) {
                              cubit.languageModel.data![1].isDefault;
                            },
                            activeColor: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
        listener: (context, state) {});
  }
}
