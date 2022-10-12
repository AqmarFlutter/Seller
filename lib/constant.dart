

import 'package:alshorjah_app/modules/login/views/login_screen.dart';
import 'package:flutter/material.dart';

import 'global_presentation/network/local/cache.dart';

String login = '/auth/login';

// String register = '/auth/signup';

String user = '/get-user-by-access_token?access_token=$token';

String shopSettings = '/seller/shop/info';

String homePage = '/seller/dashboard';

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

