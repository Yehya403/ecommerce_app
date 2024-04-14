import '../../../../domain/model/AddToCart.dart';

/// count : 1
/// _id : "65fe7c82be8b52323583f1b1"
/// product : "6428ebc6dc1175abc65ca0b9"
/// price : 160

class AddProductDto {
  AddProductDto({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  AddProductDto.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product = json['product'];
    price = json['price'];
  }

  num? count;
  String? id;
  String? product;
  num? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['_id'] = id;
    map['product'] = product;
    map['price'] = price;
    return map;
  }

  AddProduct toAddProduct() {
    return AddProduct(
      count: count,
      id: id,
      product: product,
      price: price,
    );
  }
}
