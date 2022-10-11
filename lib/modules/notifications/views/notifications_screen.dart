import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../global_presentation/global_features/color_manager.dart';
import '../../../global_presentation/global_features/font_manager.dart';

class NotificationScreen extends StatelessWidget {

  const NotificationScreen({Key? key}) : super(key: key);

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
              ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder:(context, index) => Container(
                      height: 70.h,
                      width: double.infinity,
                      color: ColorManager.grey.withAlpha(100),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle_sharp,
                                  color: ColorManager.black,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Your orders has been picked up',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .subtitle1,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text('08/10/2022'),
                                const Spacer(),
                                Text('12:00 PM'),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        SizedBox(
                          height: 10.h,
                        ),
                    itemCount: 3
                ),

            ],
          ),
        )
    );
  }
}
