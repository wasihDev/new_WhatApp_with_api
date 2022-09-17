// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    required this.success,
    required this.message,
    required this.data,
  });

  bool success;
  String message;
  List<Datum> data;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.isActive,
    required this.createdAt,
    required this.name,
    required this.description,
    required this.shopemail,
    required this.shopaddress,
    required this.shopcity,
    required this.userid,
    required this.image,
    required this.v,
    required this.products,
  });

  String id;
  bool isActive;
  DateTime createdAt;
  String name;
  String description;
  String shopemail;
  String shopaddress;
  String shopcity;
  String userid;
  String image;
  int v;
  List<Product> products;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        name: json["name"],
        description: json["description"],
        shopemail: json["shopemail"],
        shopaddress: json["shopaddress"],
        shopcity: json["shopcity"],
        userid: json["userid"],
        image: json["image"],
        v: json["__v"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "is_active": isActive,
        "created_at": createdAt.toIso8601String(),
        "name": name,
        "description": description,
        "shopemail": shopemail,
        "shopaddress": shopaddress,
        "shopcity": shopcity,
        "userid": userid,
        "image": image,
        "__v": v,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.id,
    required this.onSale,
    required this.salePercent,
    required this.sold,
    required this.sliderNew,
    required this.sliderRecent,
    required this.sliderSold,
    required this.date,
    required this.title,
    required this.categories,
    required this.subcate,
    required this.shop,
    required this.price,
    required this.saleTitle,
    required this.salePrice,
    required this.description,
    required this.colors,
    required this.size,
    required this.images,
    required this.v,
    required this.inWishlist,
  });

  String? id;
  bool onSale;
  int salePercent;
  int sold;
  bool sliderNew;
  bool sliderRecent;
  bool sliderSold;
  DateTime date;
  String title;
  String categories;
  String subcate;
  String shop;
  String price;
  String saleTitle;
  String salePrice;
  String description;
  String colors;
  String size;
  List<Image> images;
  int v;
  bool inWishlist;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        onSale: json["on_sale"],
        salePercent: json["sale_percent"],
        sold: json["sold"],
        sliderNew: json["slider_new"],
        sliderRecent: json["slider_recent"],
        sliderSold: json["slider_sold"],
        date: DateTime.parse(json["date"]),
        title: json["title"],
        categories: json["categories"],
        subcate: json["subcate"],
        shop: json["shop"],
        price: json["price"],
        saleTitle: json["sale_title"],
        salePrice: json["sale_price"],
        description: json["description"],
        colors: json["colors"],
        size: json["size"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        v: json["__v"],
        inWishlist: json["in_wishlist"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "on_sale": onSale,
        "sale_percent": salePercent,
        "sold": sold,
        "slider_new": sliderNew,
        "slider_recent": sliderRecent,
        "slider_sold": sliderSold,
        "date": date.toIso8601String(),
        "title": title,
        "categories": categories,
        "subcate": subcate,
        "shop": shop,
        "price": price,
        "sale_title": saleTitle,
        "sale_price": salePrice,
        "description": description,
        "colors": colors,
        "size": size,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "__v": v,
        "in_wishlist": inWishlist,
      };
}

class Image {
  Image({
    required this.id,
    required this.filename,
    required this.url,
  });

  String id;
  String filename;
  String url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["_id"],
        filename: json["filename"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "filename": filename,
        "url": url,
      };
}
