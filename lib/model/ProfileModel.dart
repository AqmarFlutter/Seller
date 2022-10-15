class ProfileModel {
  bool? result;
  int? id;
  String? type;
  String? name;
  String? email;
  String? avatar;
  String? avatarOriginal;
  String? phone;
  int? cashOnDeliveryStatus;
  int? bankPaymentStatus;
  String? bankName;
  String? bankAccName;
  String? bankAccNo;
  int? bankRoutingNo;
  Addresses? addresses;
  String? address;
  String? facebook;
  String? google;
  String? twitter;
  int? trueRating;
  int? rating;

  ProfileModel(
      {this.result,
        this.id,
        this.type,
        this.name,
        this.email,
        this.avatar,
        this.avatarOriginal,
        this.phone,
        this.cashOnDeliveryStatus,
        this.bankPaymentStatus,
        this.bankName,
        this.bankAccName,
        this.bankAccNo,
        this.bankRoutingNo,
        this.addresses,
        this.address,
        this.facebook,
        this.google,
        this.twitter,
        this.trueRating,
        this.rating});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    id = json['id'];
    type = json['type'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    avatarOriginal = json['avatar_original'];
    phone = json['phone'];
    cashOnDeliveryStatus = json['cash_on_delivery_status'];
    bankPaymentStatus = json['bank_payment_status'];
    bankName = json['bank_name'];
    bankAccName = json['bank_acc_name'];
    bankAccNo = json['bank_acc_no'];
    bankRoutingNo = json['bank_routing_no'];
    addresses = json['addresses'] != null
        ? new Addresses.fromJson(json['addresses'])
        : null;
    address = json['address'];
    facebook = json['facebook'];
    google = json['google'];
    twitter = json['twitter'];
    trueRating = json['true_rating'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['avatar_original'] = this.avatarOriginal;
    data['phone'] = this.phone;
    data['cash_on_delivery_status'] = this.cashOnDeliveryStatus;
    data['bank_payment_status'] = this.bankPaymentStatus;
    data['bank_name'] = this.bankName;
    data['bank_acc_name'] = this.bankAccName;
    data['bank_acc_no'] = this.bankAccNo;
    data['bank_routing_no'] = this.bankRoutingNo;
    if (this.addresses != null) {
      data['addresses'] = this.addresses!.toJson();
    }
    data['address'] = this.address;
    data['facebook'] = this.facebook;
    data['google'] = this.google;
    data['twitter'] = this.twitter;
    data['true_rating'] = this.trueRating;
    data['rating'] = this.rating;
    return data;
  }
}

class Addresses {
  List<Data>? data;

  Addresses({this.data});

  Addresses.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? userId;
  String? address;
  int? countryId;
  int? stateId;
  int? cityId;
  String? countryName;
  String? stateName;
  String? cityName;
  String? postalCode;
  String? phone;
  int? setDefault;
  bool? locationAvailable;
  double? lat;
  double? lang;

  Data(
      {this.id,
        this.userId,
        this.address,
        this.countryId,
        this.stateId,
        this.cityId,
        this.countryName,
        this.stateName,
        this.cityName,
        this.postalCode,
        this.phone,
        this.setDefault,
        this.locationAvailable,
        this.lat,
        this.lang});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    address = json['address'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    countryName = json['country_name'];
    stateName = json['state_name'];
    cityName = json['city_name'];
    postalCode = json['postal_code'];
    phone = json['phone'];
    setDefault = json['set_default'];
    locationAvailable = json['location_available'];
    lat = json['lat'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['address'] = this.address;
    data['country_id'] = this.countryId;
    data['state_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['country_name'] = this.countryName;
    data['state_name'] = this.stateName;
    data['city_name'] = this.cityName;
    data['postal_code'] = this.postalCode;
    data['phone'] = this.phone;
    data['set_default'] = this.setDefault;
    data['location_available'] = this.locationAvailable;
    data['lat'] = this.lat;
    data['lang'] = this.lang;
    return data;
  }
}
