// class ShaorjahRegisterModel {
//   String? name;
//   String? emailOrPhone;
//   String? password;
//   String? passowrdConfirmation;
//   String? registerBy;
//   String? verifyBy;
//   String? accessToken;
//
//   ShaorjahRegisterModel(
//       {
//         this.name,
//         this.emailOrPhone,
//         this.password,
//         this.passowrdConfirmation,
//         this.registerBy,
//         this.verifyBy,
//         this.accessToken,
//       });
//
//   ShaorjahRegisterModel.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     emailOrPhone = json['email_or_phone'];
//     password = json['password'];
//     passowrdConfirmation = json['passowrd_confirmation'];
//     registerBy = json['register_by'];
//     verifyBy = json['verify_by'];
//     accessToken = json['access_token'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['email_or_phone'] = this.emailOrPhone;
//     data['password'] = this.password;
//     data['passowrd_confirmation'] = this.passowrdConfirmation;
//     data['register_by'] = this.registerBy;
//     data['verify_by'] = this.verifyBy;
//     data['access_token'] = this.accessToken;
//     return data;
//   }
// }