class ShopInfoModel {
  int? id;
  int? userId;
  String? name;
  String? logo;
  //List<String>? sliders;
  String? slidersIds;
  String? address;
  String? facebook;
  String? google;
  String? twitter;
  int? trueRating;
  int? rating;
  String? phone;
  String? slug;
  String? metaTitle;
  String? metaDescription;
  int? deliveryPickupLongitude;
  int? deliveryPickupLatitude;
  int? cashOnDeliveryStatus;
  int? bankPaymentStatus;
  String? bankName;
  String? bankAccName;
  String? bankAccNo;
  int? bankRoutingNo;
  String? instagram;
  String? youtube;

  ShopInfoModel({this.id, this.userId, this.name, this.logo, this.slidersIds, this.address, this.facebook, this.google, this.twitter, this.trueRating, this.rating, this.phone, this.slug, this.metaTitle, this.metaDescription, this.deliveryPickupLongitude, this.deliveryPickupLatitude, this.cashOnDeliveryStatus, this.bankPaymentStatus, this.bankName, this.bankAccName, this.bankAccNo, this.bankRoutingNo, this.instagram, this.youtube});

  ShopInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    logo = json['logo'];
    // if (json['sliders'] != null) {
    //   sliders = <String>[];
    //   json['sliders'].forEach((v) { sliders!.add(v); });
    // }
    slidersIds = json['sliders_ids'];
    address = json['address'];
    facebook = json['facebook'];
    google = json['google'];
    twitter = json['twitter'];
    trueRating = json['true_rating'];
    rating = json['rating'];
    phone = json['phone'];
    slug = json['slug'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    deliveryPickupLongitude = json['delivery_pickup_longitude'];
    deliveryPickupLatitude = json['delivery_pickup_latitude'];
    cashOnDeliveryStatus = json['cash_on_delivery_status'];
    bankPaymentStatus = json['bank_payment_status'];
    bankName = json['bank_name'];
    bankAccName = json['bank_acc_name'];
    bankAccNo = json['bank_acc_no'];
    bankRoutingNo = json['bank_routing_no'];
    instagram = json['instagram'];
    youtube = json['youtube'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['logo'] = this.logo;
    // if (this.sliders != null) {
    //   data['sliders'] = this.sliders!.map((v) => v.toString()).toList();
    // }
    data['sliders_ids'] = this.slidersIds;
    data['address'] = this.address;
    data['facebook'] = this.facebook;
    data['google'] = this.google;
    data['twitter'] = this.twitter;
    data['true_rating'] = this.trueRating;
    data['rating'] = this.rating;
    data['phone'] = this.phone;
    data['slug'] = this.slug;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['delivery_pickup_longitude'] = this.deliveryPickupLongitude;
    data['delivery_pickup_latitude'] = this.deliveryPickupLatitude;
    data['cash_on_delivery_status'] = this.cashOnDeliveryStatus;
    data['bank_payment_status'] = this.bankPaymentStatus;
    data['bank_name'] = this.bankName;
    data['bank_acc_name'] = this.bankAccName;
    data['bank_acc_no'] = this.bankAccNo;
    data['bank_routing_no'] = this.bankRoutingNo;
    data['instagram'] = this.instagram;
    data['youtube'] = this.youtube;
    return data;
  }
}

// class Sliders {
//
//
//
// Sliders.fromJson(Map<String, dynamic> json) {
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   return data;
// }
// }
