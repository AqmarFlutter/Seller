class Top12ProductModel {
  List<ProductModel>? data;

  Top12ProductModel({this.data});

  Top12ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ProductModel>[];
      json['data'].forEach((v) {
        data!.add(new ProductModel.fromJson(v));
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

class ProductModel {
  int? id;
  String? name;
  String? thumbnailImg;
  String? unitPrice;
  String? unitPriceBeforeDiscount;
  int? currentStock;
  bool? status;
  String? category;
  bool? featured;

  ProductModel(
      {this.id,
        this.name,
        this.thumbnailImg,
        this.unitPrice,
        this.unitPriceBeforeDiscount,
        this.currentStock,
        this.status,
        this.category,
        this.featured});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    thumbnailImg = json['thumbnail_img'];
    unitPrice = json['unit_price'];
    unitPriceBeforeDiscount = json['unit_price_before_discount'];
    currentStock = json['current_stock'];
    status = json['status'];
    category = json['category'];
    featured = json['featured'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['thumbnail_img'] = this.thumbnailImg;
    data['unit_price'] = this.unitPrice;
    data['unit_price_before_discount'] = this.unitPriceBeforeDiscount;
    data['current_stock'] = this.currentStock;
    data['status'] = this.status;
    data['category'] = this.category;
    data['featured'] = this.featured;
    return data;
  }
}
