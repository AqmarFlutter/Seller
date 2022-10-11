import 'package:alshorjah_app/constant.dart';
import 'package:alshorjah_app/modules/language/views/language_screen.dart';
import 'package:alshorjah_app/modules/login/views/login_screen.dart';
import 'package:alshorjah_app/modules/notifications/views/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../paymentsetting/views/payment_setting_screen.dart';
import '../../shopsetting/views/shop_setting_screen.dart';
import '../widget/setting_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentSettingScreen()));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.sp,
                    backgroundImage: const AssetImage('assets/images/user.png'),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LanguageScreen()));
              },
              child: const SettingWidget(
                title: 'Language',
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              },
              child: const SettingWidget(
                title: 'Notifications',
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShopSettingScreen()));
              },
              child: const SettingWidget(
                title: 'Shop Settings',
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {},
              child: const SettingWidget(
                title: 'About Us',
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onLongPress: (){},
              onTap: ()
              {
                signOut(context);
              },
              child: const SettingWidget(
                title: 'Log Out',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
