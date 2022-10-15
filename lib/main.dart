import 'package:alshorjah_app/constant.dart';
import 'package:alshorjah_app/global_presentation/network/local/cache.dart';
import 'package:alshorjah_app/global_presentation/network/remote/dio_helper.dart';
import 'package:alshorjah_app/layout/cubit/cubit.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:alshorjah_app/layout/views/layout_screen.dart';
import 'package:alshorjah_app/modules/login/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  DioHelper.init();
  await CacheHelper.init();

  token = CacheHelper.getData(key: 'token');
  //print(token);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => AlshorjahCubit()
              ..getUserData()
              ..getShopSettingData()
              ..getHomePageData()
              ..getProductData()
              ..getNotification()
            ,
          ),
        ],
        child: BlocConsumer<AlshorjahCubit, AlshorjahStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreenView(
                navigateRoute: token != null ? LayoutScreen() : LoginScreen(),
                duration: 4000,
                imageSize: 200,
                imageSrc: "assets/images/splash.png",
                text: "Alshorjah",
                textType: TextType.NormalText,
                textStyle: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}
