

import 'package:alshorjah_app/modules/login/views/login_screen.dart';
import 'package:flutter/material.dart';

import 'global_presentation/network/local/cache.dart';

String login = '/auth/login';




String UpdateProfile = '/profile/update?name=.&phone=&new_password=&confirm_password=&photo=&cash_on_delivery_status=&bank_payment_status=&bank_name&bank_acc_name&bank_acc_no=&bank_routing_no=';

// String register = '/auth/signup';

String user = '/get-user-by-access_token?access_token=$token';

String shopSettings = '/seller/shop/info';

String updateShop = '/seller/shop-update?name=&address&phone=&meta_title=&meta_description&logo&delivery_pickup_longitude&delivery_pickup_latitude&facebook&instagram&google&twitter&youtube&cash_on_delivery_status&bank_payment_status&bank_name&bank_acc_name&bank_routing_no';

String homePage = '/seller/dashboard';

String product = '/seller/dashboard/top-12-product';

String profile = '/seller/profile';

String? token ='' ;





void navigatorFinished(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (route) {
    return false;
  },
);


void signOut(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      navigatorFinished(context, LoginScreen());
    }
  });
}

