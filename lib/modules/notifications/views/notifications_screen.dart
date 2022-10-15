import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                  'Notifications',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.blue,
                      fontWeight: FontWeightManager.bold),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                                height: 70.h,
                                width: double.infinity,
                                color: ColorManager.grey.withAlpha(100),
                                child: Padding(
                                  padding: const EdgeInsets.all(18),
                                  child: Column(
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.circle_sharp,
                                              color: ColorManager.black,
                                              size: 10,
                                            ),
                                            SizedBox(
                                              width: 2.w,
                                            ),
                                            Text(
                                              '${cubit.notificationModel.data![index].title} ${cubit.notificationModel.data![index].status}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Text(
                                                '${cubit.notificationModel.data![index].createdAt}'),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                                '${cubit.notificationModel.data![index].readAt}'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.h,
                              ),
                          itemCount: cubit.notificationModel.data!.length),
                    ),
                  ],
                ),
              ));
        },
        listener: (context, state) {});
  }
}
