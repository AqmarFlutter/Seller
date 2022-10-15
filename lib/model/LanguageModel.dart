class LanguageModel {
  List<Data>? data;
  bool? success;
  int? status;

  LanguageModel({this.data, this.success, this.status});

  LanguageModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? name;
  String? code;
  String? mobileAppCode;
  bool? rtl;
  bool? isDefault;
  String? image;

  Data(
      {this.id,
        this.name,
        this.code,
        this.mobileAppCode,
        this.rtl,
        this.isDefault,
        this.image});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    mobileAppCode = json['mobile_app_code'];
    rtl = json['rtl'];
    isDefault = json['is_default'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['mobile_app_code'] = this.mobileAppCode;
    data['rtl'] = this.rtl;
    data['is_default'] = this.isDefault;
    data['image'] = this.image;
    return data;
  }
}