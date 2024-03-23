import 'AddProduct.dart';

/// _id : "65fe7c82be8b52323583f1b0"
/// cartOwner : "65fe6ff1be8b52323583e92b"
/// products : [{"count":1,"_id":"65fe7c82be8b52323583f1b1","product":"6428ebc6dc1175abc65ca0b9","price":160}]
/// createdAt : "2024-03-23T06:53:54.490Z"
/// updatedAt : "2024-03-23T06:53:54.685Z"
/// __v : 0
/// totalCartPrice : 160

class AddData {
  AddData({
    this.id,
    this.cartOwner,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalCartPrice,
  });

  String? id;
  String? cartOwner;
  List<AddProduct>? products;
  String? createdAt;
  String? updatedAt;
  num? v;
  num? totalCartPrice;
}
