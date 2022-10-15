import 'package:alshorjah_app/global_presentation/network/remote/dio_helper.dart';
import 'package:alshorjah_app/layout/cubit/state.dart';
import 'package:alshorjah_app/model/HomeModel/HomePageModel.dart';
import 'package:alshorjah_app/model/HomeModel/Top12ProductModel.dart';
import 'package:alshorjah_app/model/NotificationModel.dart';
import 'package:alshorjah_app/model/ProfileModel.dart';
import 'package:alshorjah_app/model/ShopSettingsModel.dart';
import 'package:alshorjah_app/model/Update_Profile.dart';
import 'package:alshorjah_app/modules/setting/views/setting_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  late ProfileModel userData;

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
      emit(ShaorjahErrorLogin(error.toString()));
    });
  }

  void openDialog()
  {
    Dialog(
      child: Container(
        height: 70.h,
        width: double.infinity,
        color: Colors.red,
      ),
      backgroundColor: Colors.red,
    );
    emit(ShowDialogState());
  }



  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var bankNameController = TextEditingController();
  var bankAccountNameController = TextEditingController();
  var bankAccountNumberController = TextEditingController();
  var bankRoutingNumberController = TextEditingController();

  bool cashStatus = false;
  bool bankStatus = false;

  late UpdateProfileModel updateProfileModel;
  void updateProfile({
    required String name,
    required String phone,
    required String password,
    required String confirmPassword,
    required bool cashPayment,
    required bool bankPayment,
    required String bankName,
    required String bankAccountName,
    required String bankAccountNumber,
    required String bankRoutingNumber,
  }) {
    emit(ShaorjahLoadingUpdateProfile());
    DioHelper.postData(
      url: UpdateProfile,
      token: token,
      data: {
        'name': name,
        'phone': phone,
        'new_password': password,
        'confirm_password': confirmPassword,
        'cash_on_delivery_status': cashPayment,
        'bank_payment_status': bankPayment,
        'bank_name': bankName,
        'bank_acc_name': bankAccountName,
        'bank_acc_no': bankAccountNumber,
        'bank_routing_no': bankRoutingNumber,
      },
    ).then((value) {
      updateProfileModel = UpdateProfileModel.fromJson(value.data);
      print(updateProfileModel.result);
      emit(ShaorjahSuccessUpdateProfile(updateProfileModel));
    }).catchError((error) {
      emit(ShaorjahErrorUpdateProfile(error.toString()));
    });
  }


  var nameShopController = TextEditingController();
  var phoneShopController = TextEditingController();
  var addressShopController = TextEditingController();
  var metaShopController = TextEditingController();
  var descriptionShopController = TextEditingController();
  late UpdateProfileModel _updateProfileModel;

  void updateShopBasic({
    required String name,
    required String phone,
    required String address,
    required String metaShop,
    required String descriptionShop,
  }) {
    emit(ShaorjahLoadingUpdateShop());
    DioHelper.postData(
      url: updateShop,
      token: token,
      data: {
        'name': name,
        'phone': phone,
        'meta_title': metaShop,
        'meta_description': descriptionShop,
        'address': address,
      },
    ).then((value) {
      _updateProfileModel = UpdateProfileModel.fromJson(value.data);
      emit(ShaorjahSuccessUpdateShop(_updateProfileModel));
    }).catchError((error) {
      emit(ShaorjahErrorUpdateShop(error.toString()));
    });
  }

  var facebookController = TextEditingController();
  var instagramController = TextEditingController();
  var twitterController = TextEditingController();
  var googleController = TextEditingController();
  var youtubeController = TextEditingController();

  late UpdateProfileModel _updateShopSocial;
  void updateShopSocial({
    required String facebook,
    required String instagram,
    required String youtube,
    required String google,
    required String twitter,
  }) {
    emit(ShaorjahLoadingUpdateShopSocial());
    DioHelper.postData(
      url: updateShop,
      token: token,
      data: {
        'facebook': facebook,
        'instagram': instagram,
        'google': google,
        'twitter': twitter,
        'youtube': youtube,
      },
    ).then((value) {
      _updateShopSocial = UpdateProfileModel.fromJson(value.data);
      emit(ShaorjahSuccessUpdateShopSocial(_updateShopSocial));
    }).catchError((error) {
      emit(ShaorjahErrorUpdateShopSocial(error.toString()));
    });
  }

  void getUserData() {
    emit(SharojahLoadingGetUserState());
    DioHelper.getData(
      url: profile,
      token: token,
    ).then((value) {
      userData = ProfileModel.fromJson(value.data);
      emit(SharojahSuccessGetUserState());
    }).catchError((error) {
      emit(SharojahErrorGetUserState(error));
    });
  }


  late NotificationModel notificationModel;
  void getNotification() {
    emit(SharojahLoadingGetNotificationState());
    DioHelper.getData(
      url: notification,
      token: token,
    ).then((value) {
      notificationModel = NotificationModel.fromJson(value.data);
      print(notificationModel.data!.length);
      emit(SharojahSuccessGetNotificationState());
    }).catchError((error) {
      emit(SharojahErrorGetNotificationState(error));
    });
  }

  late ShopInfoModel shopSettingsModel;

  void getShopSettingData() {
    emit(SharojahLoadingGetShopSettingState());
    DioHelper.getData(
      url: shopSettings,
      token: token,
    ).then((value) {
      shopSettingsModel = ShopInfoModel.fromJson(value.data);
      emit(SharojahSuccessGetShopSettingState());
    }).catchError((error) {
      emit(SharojahErrorGetShopSettingState(error));
    });
  }

  late HomePageModel homePageModel;

  void getHomePageData() {
    emit(SharojahLoadingGetHomePageState());
    DioHelper.getData(
      url: homePage,
      token: token,
    ).then((value) {
      homePageModel = HomePageModel.fromJson(value.data);
      emit(SharojahSuccessGetHomePageState());
    }).catchError((error) {
      emit(SharojahErrorGetHomePageState(error));
    });
  }

  late Top12ProductModel model;
  void getProductData() {
    emit(SharojahLoadingGetHomePageState());
    DioHelper.getData(
      url: product,
      token: token,
    ).then((value) {
      model = Top12ProductModel.fromJson(value.data);
    }).catchError((error) {
      emit(SharojahErrorGetHomePageState(error));
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
