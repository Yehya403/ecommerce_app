import 'AddData.dart';

/// status : "success"
/// message : "Product added successfully to your cart"
/// numOfCartItems : 1
/// data : {"_id":"65fe7c82be8b52323583f1b0","cartOwner":"65fe6ff1be8b52323583e92b","products":[{"count":1,"_id":"65fe7c82be8b52323583f1b1","product":"6428ebc6dc1175abc65ca0b9","price":160}],"createdAt":"2024-03-23T06:53:54.490Z","updatedAt":"2024-03-23T06:53:54.685Z","__v":0,"totalCartPrice":160}

class AddToCartResponse {
  AddToCartResponse({
    this.status,
    this.message,
    this.numOfCartItems,
    this.data,
  });

  String? status;
  String? message;
  num? numOfCartItems;
  AddData? data;
}
