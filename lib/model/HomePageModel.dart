class HomePageModel {
  List<Data>? data;

  HomePageModel({this.data});

  HomePageModel.fromJson(Map<String, dynamic> json) {
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
  HomePageModel? products;
  List? last7DaysSales;
  int? reating;
  int? productsCount;
  int? ordersCount;
  String? totalSales;
  int? orderStat;
  String? soldAmountCurrentMonth;
  String? soldAmountLast2Month;
  List<Categoy>? categoy;
  int? newOrder;
  int? cancelled;
  int? onTheWay;
  int? delivered;
  String? verify;

  Data(
      {this.products,
        this.last7DaysSales,
        this.reating,
        this.productsCount,
        this.ordersCount,
        this.totalSales,
        this.orderStat,
        this.soldAmountCurrentMonth,
        this.soldAmountLast2Month,
        this.categoy,
        this.newOrder,
        this.cancelled,
        this.onTheWay,
        this.delivered,
        this.verify});

  Data.fromJson(Map<String, dynamic> json) {
    products = json['products'] != null
        ? new HomePageModel.fromJson(json['products'])
        : null;
    if (json['last_7_days_sales'] != null) {
      last7DaysSales = <String>[];
      json['last_7_days_sales'].forEach((v) {
        last7DaysSales!.add(v);
      });
    }
    reating = json['reating'];
    productsCount = json['products_count'];
    ordersCount = json['orders_count'];
    totalSales = json['total_sales'];
    orderStat = json['order_stat'];
    soldAmountCurrentMonth = json['sold_amount_current_month'];
    soldAmountLast2Month = json['sold_amount_last_2_month'];
    if (json['categoy'] != null) {
      categoy = <Categoy>[];
      json['categoy'].forEach((v) {
        categoy!.add(new Categoy.fromJson(v));
      });
    }
    newOrder = json['new_order'];
    cancelled = json['cancelled'];
    onTheWay = json['on_the_way'];
    delivered = json['delivered'];
    verify = json['verify'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.toJson();
    }
    if (this.last7DaysSales != null) {
      data['last_7_days_sales'] =
          this.last7DaysSales!.map((v) => v!.toJson()).toList();
    }
    data['reating'] = this.reating;
    data['products_count'] = this.productsCount;
    data['orders_count'] = this.ordersCount;
    data['total_sales'] = this.totalSales;
    data['order_stat'] = this.orderStat;
    data['sold_amount_current_month'] = this.soldAmountCurrentMonth;
    data['sold_amount_last_2_month'] = this.soldAmountLast2Month;
    if (this.categoy != null) {
      data['categoy'] = this.categoy!.map((v) => v.toJson()).toList();
    }
    data['new_order'] = this.newOrder;
    data['cancelled'] = this.cancelled;
    data['on_the_way'] = this.onTheWay;
    data['delivered'] = this.delivered;
    data['verify'] = this.verify;
    return data;
  }
}

class DataModel{
  int? id;
  String? name;
  String? thumbnailImage;
  bool? hasDiscount;
  String? strokedPrice;
  String? mainPrice;
  int? rating;
  int? sales;
  Links? links;

  DataModel(
      {this.id,
        this.name,
        this.thumbnailImage,
        this.hasDiscount,
        this.strokedPrice,
        this.mainPrice,
        this.rating,
        this.sales,
        this.links});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    thumbnailImage = json['thumbnail_image'];
    hasDiscount = json['has_discount'];
    strokedPrice = json['stroked_price'];
    mainPrice = json['main_price'];
    rating = json['rating'];
    sales = json['sales'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['thumbnail_image'] = this.thumbnailImage;
    data['has_discount'] = this.hasDiscount;
    data['stroked_price'] = this.strokedPrice;
    data['main_price'] = this.mainPrice;
    data['rating'] = this.rating;
    data['sales'] = this.sales;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class Links {
  String? details;
  String? edit;

  Links({this.details, this.edit});

  Links.fromJson(Map<String, dynamic> json) {
    details = json['details'];
    edit = json['edit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['details'] = this.details;
    data['edit'] = this.edit;
    return data;
  }
}

class Categoy {
  String? name;
  int? count;

  Categoy({this.name, this.count});

  Categoy.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['count'] = this.count;
    return data;
  }
}