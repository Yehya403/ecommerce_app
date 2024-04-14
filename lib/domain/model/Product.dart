import 'Brand.dart';
import 'Category.dart';
import 'Subcategory.dart';

/// sold : 3958
/// images : ["https://ecommerce.routemisr.com/Route-Academy-products/1680403397482-1.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680403397482-2.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680403397483-3.jpeg","https://ecommerce.routemisr.com/Route-Academy-products/1680403397485-4.jpeg"]
/// subcategory : [{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}]
/// ratingsQuantity : 18
/// title : "Woman Shawl"
/// slug : "woman-shawl"
/// description : "Material\tPolyester Blend\nColour Name\tMulticolour\nDepartment\tWomen"
/// quantity : 225
/// price : 160
/// imageCover : "https://ecommerce.routemisr.com/Route-Academy-products/1680403397402-cover.jpeg"
/// category : {"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"}
/// brand : {"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"}
/// ratingsAverage : 4.8
/// id : "6428ebc6dc1175abc65ca0b9"

class Product {
  Product({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.id,
  });

  num? sold;
  List<String>? images;
  List<Subcategory>? subcategory;
  num? ratingsQuantity;
  String? title;
  String? slug;
  String? description;
  num? quantity;
  num? price;
  String? imageCover;
  Category? category;
  Brand? brand;
  num? ratingsAverage;
  String? id;

  Product copyWith({
    num? sold,
    List<String>? images,
    List<Subcategory>? subcategory,
    num? ratingsQuantity,
    String? title,
    String? slug,
    String? description,
    num? quantity,
    num? price,
    String? imageCover,
    Category? category,
    Brand? brand,
    num? ratingsAverage,
    String? id,
  }) =>
      Product(
        sold: sold ?? this.sold,
        images: images ?? this.images,
        subcategory: subcategory ?? this.subcategory,
        ratingsQuantity: ratingsQuantity ?? this.ratingsQuantity,
        title: title ?? this.title,
        slug: slug ?? this.slug,
        description: description ?? this.description,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        imageCover: imageCover ?? this.imageCover,
        category: category ?? this.category,
        brand: brand ?? this.brand,
        ratingsAverage: ratingsAverage ?? this.ratingsAverage,
        id: id ?? this.id,
      );
}
