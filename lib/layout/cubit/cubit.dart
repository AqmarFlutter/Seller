// ignore_for_file: unnecessary_import
import 'package:alshorjah_app/global_presentation/network/remote/dio_helper.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:alshorjah_app/model/ShopSettingsModel.dart';
import 'package:alshorjah_app/modules/setting/views/setting_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constant.dart';
import '../../model/ShaorjahLoginModel.dart';
import '../../modules/home/views/home_screen.dart';
import '../../modules/order/views/order_screen.dart';
import '../../modules/payment/views/payment_screen.dart';
import '../../modules/products/views/product_screen.dart';

class AlshorjahCubit extends Cubit<AlshorjahStates> {
  AlshorjahCubit() : super(AlshorjahInitialState());

  static AlshorjahCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;

  List<Widget> bottomScreen = [
    const HomeScreen(),
    const ProductScreen(),
    OrderScreen(),
    const PaymentScreen(),
    const SettingScreen(),
  ];

  List<String> titles = [
    'Dashboard',
    'Products',
    'Orders',
    'Payment',
    'Settings',
  ];

  late ShaorjahLoginModel loginModel;

  late User userData;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(ShaorjahLoadingLogin());
    DioHelper.postData(
      url: login,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      loginModel = ShaorjahLoginModel.fromJson(value.data);
      emit(ShaorjahSuccessLogin(loginModel));
    }).catchError((error) {
      print(error.toString());
      emit(ShaorjahErrorLogin(error.toString()));
    });
  }


  void getUserData() {
    emit(SharojahLoadingGetUserState());
    DioHelper.getData(
      url: user,
      token: token,
    ).then((value) {
      userData = User.fromJson(value.data);
      emit(SharojahSuccessGetUserState());
    }).catchError((error) {
      emit(SharojahErrorGetUserState(error));
    });
  }

  late Data shopSettingsModel;
  void getShopSettingData() {
    emit(SharojahLoadingGetShopSettingState());
    DioHelper.getData(
      url: shopSettings,
      token: token,
    ).then((value) {
      print(token);
      shopSettingsModel = Data.fromJson(value.data);
      print(shopSettingsModel.userId);
      print(value.data);
      print('the password is ${shopSettingsModel.name}');
      emit(SharojahSuccessGetShopSettingState());
    }).catchError((error) {
      print(error.toString());
      emit(SharojahErrorGetShopSettingState(error));
    });
  }

  // void userRegister({
  //   required String emailOrPhone,
  //   required String name,
  //   required String password,
  //   required String confirmPassword,
  // })
  // {
  //   emit(ShaorjahLoadingRegister());
  //   DioHelper.postData(
  //     url: register,
  //     data: {
  //       'name' : name,
  //       'email' : emailOrPhone,
  //       'password' : password,
  //       'passowrd_confirmation' : confirmPassword,
  //     },
  //   ).then((value) {
  //     registerModel = ShaorjahRegisterModel.fromJson(value.data);
  //     emit(ShaorjahSuccessRegister(registerModel));
  //   }).catchError((error)
  //   {
  //     print(error.toString());
  //     emit(ShaorjahErrorRegister(error.toString()));
  //   });
  // }

  void changeCurrentIndex(int index) {
    selectedIndex = index;
    emit(AlshorjahChangeBottomNavState());
  }

  IconData suffix = Icons.visibility_outlined;
  IconData suffix2 = Icons.visibility_outlined;
  bool isPassword = true;
  bool isPassword2 = true;

  void changeShowPassword() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(AlshorjahChangeShowPasswordState());
  }

  void changeShowPasswordConfirm() {
    isPassword2 = !isPassword2;
    suffix2 =
        isPassword2 ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(AlshorjahChangeShowPasswordState());
  }

  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();

  void saveText(String value) {
    value = passwordController.text;
    value = passwordConfirmController.text;
    emit(SaveValueTextState());
  }

  bool insteadTextFormField = false;

  void changeTextForm() {
    insteadTextFormField = !insteadTextFormField;
    emit(ShaorjahChangeTextFormFieldState());
  }
}
