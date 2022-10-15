import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_widgets/dash_divider_item.dart';

class WithdrawRequsetWidget extends StatelessWidget {
  const WithdrawRequsetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlshorjahCubit, AlshorjahStates>(
        builder: (context, state) {
          var cubit = AlshorjahCubit.get(context);
          return Container(
            width: double.infinity,
            height: 300.h,
            color: ColorManager.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Withdraw Requset history',
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const MySeparator(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '#',
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'Data',
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                      Text(
                        'Amount',
                        style: TextStyle(
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const MySeparator(),
                  SizedBox(
                    height: 30.h,
                  ),
                  if (cubit.withdrawModel.meta!.total == 0)
                    Column(
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/sad.png',
                            height: 40.sp,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: Text(
                            'Nothing found',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (cubit.withdrawModel.meta!.total != 0)
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                          itemBuilder: (context, index) =>  Container(
                            height: 80.h,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.rectangle),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Pending'),
                                        Row(
                                          children: [
                                            Icon(Icons.date_range),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text('28/10/2021'),
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Text('\$0.0')
                                  ],
                                ),
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                          itemCount: 5),
                    ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
