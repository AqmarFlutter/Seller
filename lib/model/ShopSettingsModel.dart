class ShopSettingsModel {
  List<Data>? data;
  bool? success;
  int? status;

  ShopSettingsModel({this.data, this.success, this.status});

  ShopSettingsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  dynamic id;
  dynamic userId;
  String? name;
  String? logo;
  //List<String>? sliders;
  String? address;
  String? facebook;
  String? google;
  String? twitter;
  dynamic trueRating;
  dynamic rating;

  Data(
      {this.id,
        this.userId,
        this.name,
        this.logo,
        //this.sliders,
        this.address,
        this.facebook,
        this.google,
        this.twitter,
        this.trueRating,
        this.rating});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    logo = json['logo'];
    //sliders = json['sliders'] as List<String>;
    address = json['address'];
    facebook = json['facebook'];
    google = json['google'];
    twitter = json['twitter'];
    trueRating = json['true_rating'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['logo'] = this.logo;
    //data['sliders'] = this.sliders;
    data['address'] = this.address;
    data['facebook'] = this.facebook;
    data['google'] = this.google;
    data['twitter'] = this.twitter;
    data['true_rating'] = this.trueRating;
    data['rating'] = this.rating;
    return data;
  }
}