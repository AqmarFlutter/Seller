import 'package:alshorjah_app/model/ShaorjahLoginModel.dart';
import 'package:alshorjah_app/model/ShaorjahRegisterModel.dart';
import 'package:alshorjah_app/model/Update_Profile.dart';

abstract class AlshorjahStates{}

class AlshorjahInitialState extends  AlshorjahStates {}

class AlshorjahChangeBottomNavState extends  AlshorjahStates{}


class AlshorjahChangeShowPasswordState extends  AlshorjahStates{}

class SaveValueTextState extends  AlshorjahStates{}


class ShaorjahChangeTextFormFieldState extends  AlshorjahStates{}

class ShaorjahLoadingLogin extends  AlshorjahStates{}

class ShaorjahSuccessLogin extends  AlshorjahStates {
  final ShaorjahLoginModel shaorjahLoginModel;
  ShaorjahSuccessLogin(this.shaorjahLoginModel);
}

class ShaorjahErrorLogin extends  AlshorjahStates {
  final String error;
  ShaorjahErrorLogin(this.error);
}


class SharojahLoadingGetUserState extends AlshorjahStates {}

class SharojahSuccessGetUserState extends AlshorjahStates {}

class SharojahErrorGetUserState extends AlshorjahStates
{
  final String e;
  SharojahErrorGetUserState(this.e);
}



class SharojahLoadingGetShopSettingState extends AlshorjahStates {}

class SharojahSuccessGetShopSettingState extends AlshorjahStates {}

class SharojahErrorGetShopSettingState extends AlshorjahStates {
  final String e;
  SharojahErrorGetShopSettingState(this.e);
}




class SharojahLoadingGetHomePageState extends AlshorjahStates {}

class SharojahSuccessGetHomePageState extends AlshorjahStates {}

class SharojahErrorGetHomePageState extends AlshorjahStates {
  final String e;
  SharojahErrorGetHomePageState(this.e);
}


class ShaorjahLoadingUpdateProfile extends  AlshorjahStates{}

class ShaorjahSuccessUpdateProfile extends  AlshorjahStates {
  final UpdateProfileModel shaorjahLoginModel;
  ShaorjahSuccessUpdateProfile(this.shaorjahLoginModel);
}

class ShaorjahErrorUpdateProfile extends  AlshorjahStates {
  final String error;
  ShaorjahErrorUpdateProfile(this.error);
}