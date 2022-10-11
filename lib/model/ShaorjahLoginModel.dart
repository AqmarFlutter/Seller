class ShaorjahLoginModel {
  late bool result;
  String? message;
  String? accessToken;
  String? tokenType;
  String? expiresAt;
  User? user;

  ShaorjahLoginModel(
      {
        required this.result,
      this.message,
      this.accessToken,
      this.tokenType,
      this.expiresAt,
      this.user
      });

  ShaorjahLoginModel.fromJson(Map<String, dynamic> json) {
    result = json['result'] ;
    message = json['message'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresAt = json['expires_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['message'] = this.message;
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_at'] = this.expiresAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User{
  int? id;
  String? type;
  String? name;
  String? email;
  String? avatar;
  String? avatarOriginal;
  String? phone;
  String? password;
  String? passowrdConfirmation;

  User(
      {this.id,
      this.type,
      this.name,
      this.email,
      this.avatar,
      this.avatarOriginal,
      this.phone});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    avatarOriginal = json['avatar_original'];
    phone = json['phone'];
    password = json['password'];
    passowrdConfirmation = json['passowrd_confirmation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['avatar'] = this.avatar;
    data['avatar_original'] = this.avatarOriginal;
    data['phone'] = this.phone;
    data['passowrd_confirmation'] = this.passowrdConfirmation;
    return data;
  }
}
