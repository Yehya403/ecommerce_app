import '../../../../domain/model/AddToCart.dart';
import 'AddDataDto.dart';

/// status : "success"
/// message : "Product added successfully to your cart"
/// numOfCartItems : 1
/// data : {"_id":"65fe7c82be8b52323583f1b0","cartOwner":"65fe6ff1be8b52323583e92b","products":[{"count":1,"_id":"65fe7c82be8b52323583f1b1","product":"6428ebc6dc1175abc65ca0b9","price":160}],"createdAt":"2024-03-23T06:53:54.490Z","updatedAt":"2024-03-23T06:53:54.685Z","__v":0,"totalCartPrice":160}

class AddToCartResponseDto {
  AddToCartResponseDto({
    this.status,
    this.message,
    this.numOfCartItems,
    this.data,
  });

  AddToCartResponseDto.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null ? AddDataDto.fromJson(json['data']) : null;
  }

  String? status;
  String? message;
  num? numOfCartItems;
  AddDataDto? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['numOfCartItems'] = numOfCartItems;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

  AddToCart toAddToCart() {
    return AddToCart(
      status: status,
      message: message,
      numOfCartItems: numOfCartItems,
      data: data?.toAddData(),
    );
  }
}
