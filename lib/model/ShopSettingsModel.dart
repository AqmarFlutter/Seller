class ShopInfoModel {
  int? id;
  int? userId;
  String? name;
  String? logo;
  // List<String>? sliders;
  String? address;
  String? facebook;
  String? google;
  String? twitter;
  int? trueRating;
  int? rating;

  ShopInfoModel({
    this.id,
    this.userId,
    this.name,
    this.logo,
    // this.sliders,
    this.address,
    this.facebook,
    this.google,
    this.twitter,
    this.trueRating,
    this.rating,
  });

  ShopInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    logo = json['logo'];
    // if (json['sliders'] != null) {
    //   sliders = <String>[];
    //   json['sliders'].forEach((v) {
    //     sliders!.add(v);
    //   });
    // }
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
    // if (this.sliders != null) {
    //   data['sliders'] = this.sliders!.map((v) => v.toString()).toList();
    // }
    data['address'] = this.address;
    data['facebook'] = this.facebook;
    data['google'] = this.google;
    data['twitter'] = this.twitter;
    data['true_rating'] = this.trueRating;
    data['rating'] = this.rating;
    return data;
  }
}
//
// class Sliders {
//   Sliders.fromJson(Map<String, dynamic> json) {}
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     return data;
//   }
// }
