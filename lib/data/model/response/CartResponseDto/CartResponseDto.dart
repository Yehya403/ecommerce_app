import '../../../../domain/model/Cart.dart';
import '../productsResponse/ProductDto.dart';

/// status : "success"
/// numOfCartItems : 15
/// data : {"_id":"65fe7c82be8b52323583f1b0","cartOwner":"65fe6ff1be8b52323583e92b","products":[{"count":22,"_id":"65fe7c82be8b52323583f1b1","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428ebc6dc1175abc65ca0b9","title":"Woman Shawl","quantity":225,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403397402-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428ebc6dc1175abc65ca0b9"},"price":160},{"count":17,"_id":"65fe9528be8b5232358404e8","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428eb43dc1175abc65ca0b3","title":"Woman Shawl","quantity":220,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403266739-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428eb43dc1175abc65ca0b3"},"price":149},{"count":6,"_id":"65fe9531be8b5232358404f5","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428ead5dc1175abc65ca0ad","title":"Woman Shawl","quantity":220,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403156501-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428ead5dc1175abc65ca0ad"},"price":149},{"count":6,"_id":"65fe96a3be8b523235840658","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e997dc1175abc65ca0a1","title":"Woman Shawl","quantity":220,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402838276-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428e997dc1175abc65ca0a1"},"price":149},{"count":2,"_id":"65fe96a7be8b523235840665","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e884dc1175abc65ca096","title":"Woman Shawl","quantity":228,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402563605-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.2,"id":"6428e884dc1175abc65ca096"},"price":349},{"count":3,"_id":"65fe9a32be8b523235840a2c","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e7ecdc1175abc65ca090","title":"Woman Bordeaux Long Sleeve Blouse BORDEAUX","quantity":228,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402411833-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.2,"id":"6428e7ecdc1175abc65ca090"},"price":499},{"count":2,"_id":"65fea795be8b52323584118d","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428ce55dc1175abc65ca043","title":"Court Tennis Track Pants Black","quantity":170,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680395859874-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089c3924b25627a2531593","name":"Adidas","slug":"adidas","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285881943.png"},"ratingsAverage":2.8,"id":"6428ce55dc1175abc65ca043"},"price":3159},{"count":1,"_id":"65fea8d4be8b5232358412a2","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428c5b7dc1175abc65ca019","title":"Galaxy 6 Running Shoes","quantity":60,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680393655068-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089c3924b25627a2531593","name":"Adidas","slug":"adidas","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285881943.png"},"ratingsAverage":5,"id":"6428c5b7dc1175abc65ca019"},"price":1629},{"count":1,"_id":"65fea965be8b5232358413fc","product":{"subcategory":[{"_id":"6407f3ccb575d3b90bf957eb","name":"Cameras & Accessories","slug":"cameras-and-accessories","category":"6439d2d167d9aa4ca970649f"}],"_id":"6408e43a6406cd15828e8f22","title":"EOS M50 Mark II Mirrorless Digital Camera With 15-45mm Lens Black","quantity":600,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1678304313006-cover.jpeg","category":{"_id":"6439d2d167d9aa4ca970649f","name":"Electronics","slug":"electronics","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511121316.png"},"brand":{"_id":"64089fe824b25627a25315d1","name":"Canon","slug":"canon","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286824747.png"},"ratingsAverage":4.3,"id":"6408e43a6406cd15828e8f22"},"price":19699},{"count":1,"_id":"65feabfebe8b52323584180f","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428de2adc1175abc65ca05b","title":"Softride Enzo NXT CASTLEROCK-High Risk R","quantity":173,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680399913757-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d5c24b25627a253159f","name":"Puma","slug":"puma","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286172219.png"},"ratingsAverage":2.8,"id":"6428de2adc1175abc65ca05b"},"price":2999},{"count":1,"_id":"65feadd8be8b523235841adf","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428c0fedc1175abc65c9ffd","title":"Crew Neck Long Sleeve Striped Men's Tricot Sweater","quantity":100,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680392445443-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d9e24b25627a25315a5","name":"LC Waikiki","slug":"lc-waikiki","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286238428.png"},"ratingsAverage":2,"id":"6428c0fedc1175abc65c9ffd"},"price":599},{"count":1,"_id":"65feb94fbe8b523235842c46","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428c320dc1175abc65ca008","title":"Crew Neck Long Sleeve Men's Knitwear Sweater","quantity":50,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680392991271-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d9e24b25627a25315a5","name":"LC Waikiki","slug":"lc-waikiki","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286238428.png"},"ratingsAverage":4.7,"id":"6428c320dc1175abc65ca008"},"price":449},{"count":1,"_id":"65feb954be8b523235842c53","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428dd2edc1175abc65ca055","title":"ESS Big Logo Hoodie TR Puma Black","quantity":200,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680399661234-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d5c24b25627a253159f","name":"Puma","slug":"puma","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286172219.png"},"ratingsAverage":4.8,"id":"6428dd2edc1175abc65ca055"},"price":2649},{"count":1,"_id":"65feb95dbe8b523235842c80","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e778dc1175abc65ca08a","title":"Woman Brown Long Sleeve Tunic LT.CAMEL","quantity":229,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402295928-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.7,"id":"6428e778dc1175abc65ca08a"},"price":499},{"count":1,"_id":"65feb964be8b523235842ca0","product":{"subcategory":[{"_id":"6407f3a8b575d3b90bf957e2","name":"Laptops & Accessories","slug":"laptops-and-accessories","category":"6439d2d167d9aa4ca970649f"}],"_id":"6408de536406cd15828e8f10","title":"WH-CH510 Wireless On-Ear Bluetooth Headphones Black","quantity":600,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1678302803089-cover.jpeg","category":{"_id":"6439d2d167d9aa4ca970649f","name":"Electronics","slug":"electronics","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511121316.png"},"brand":{"_id":"64089f5824b25627a25315c7","name":"SONY","slug":"sony","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286680638.png"},"ratingsAverage":4.3,"id":"6408de536406cd15828e8f10"},"price":1949}],"createdAt":"2024-03-23T06:53:54.490Z","updatedAt":"2024-04-13T17:58:11.257Z","__v":14,"totalCartPrice":46826}

class CartResponseDto {
  CartResponseDto({
    this.status,
    this.numOfCartItems,
    this.data,
    this.message,
  });

  CartResponseDto.fromJson(dynamic json) {
    status = json['status'];
    numOfCartItems = json['numOfCartItems'];
    data = json['data'] != null ? CartDataDto.fromJson(json['data']) : null;
    message = json['message'];
  }

  String? status;
  num? numOfCartItems;
  CartDataDto? data;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['numOfCartItems'] = numOfCartItems;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['message'] = message;
    return map;
  }

  Cart toCart() {
    return Cart(
      status: status,
      numOfCartItems: numOfCartItems,
      data: data?.toCartData(),
    );
  }
}

/// _id : "65fe7c82be8b52323583f1b0"
/// cartOwner : "65fe6ff1be8b52323583e92b"
/// products : [{"count":22,"_id":"65fe7c82be8b52323583f1b1","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428ebc6dc1175abc65ca0b9","title":"Woman Shawl","quantity":225,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403397402-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428ebc6dc1175abc65ca0b9"},"price":160},{"count":17,"_id":"65fe9528be8b5232358404e8","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428eb43dc1175abc65ca0b3","title":"Woman Shawl","quantity":220,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403266739-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428eb43dc1175abc65ca0b3"},"price":149},{"count":6,"_id":"65fe9531be8b5232358404f5","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428ead5dc1175abc65ca0ad","title":"Woman Shawl","quantity":220,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403156501-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428ead5dc1175abc65ca0ad"},"price":149},{"count":6,"_id":"65fe96a3be8b523235840658","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e997dc1175abc65ca0a1","title":"Woman Shawl","quantity":220,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402838276-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428e997dc1175abc65ca0a1"},"price":149},{"count":2,"_id":"65fe96a7be8b523235840665","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e884dc1175abc65ca096","title":"Woman Shawl","quantity":228,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402563605-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.2,"id":"6428e884dc1175abc65ca096"},"price":349},{"count":3,"_id":"65fe9a32be8b523235840a2c","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e7ecdc1175abc65ca090","title":"Woman Bordeaux Long Sleeve Blouse BORDEAUX","quantity":228,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402411833-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.2,"id":"6428e7ecdc1175abc65ca090"},"price":499},{"count":2,"_id":"65fea795be8b52323584118d","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428ce55dc1175abc65ca043","title":"Court Tennis Track Pants Black","quantity":170,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680395859874-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089c3924b25627a2531593","name":"Adidas","slug":"adidas","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285881943.png"},"ratingsAverage":2.8,"id":"6428ce55dc1175abc65ca043"},"price":3159},{"count":1,"_id":"65fea8d4be8b5232358412a2","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428c5b7dc1175abc65ca019","title":"Galaxy 6 Running Shoes","quantity":60,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680393655068-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089c3924b25627a2531593","name":"Adidas","slug":"adidas","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285881943.png"},"ratingsAverage":5,"id":"6428c5b7dc1175abc65ca019"},"price":1629},{"count":1,"_id":"65fea965be8b5232358413fc","product":{"subcategory":[{"_id":"6407f3ccb575d3b90bf957eb","name":"Cameras & Accessories","slug":"cameras-and-accessories","category":"6439d2d167d9aa4ca970649f"}],"_id":"6408e43a6406cd15828e8f22","title":"EOS M50 Mark II Mirrorless Digital Camera With 15-45mm Lens Black","quantity":600,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1678304313006-cover.jpeg","category":{"_id":"6439d2d167d9aa4ca970649f","name":"Electronics","slug":"electronics","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511121316.png"},"brand":{"_id":"64089fe824b25627a25315d1","name":"Canon","slug":"canon","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286824747.png"},"ratingsAverage":4.3,"id":"6408e43a6406cd15828e8f22"},"price":19699},{"count":1,"_id":"65feabfebe8b52323584180f","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428de2adc1175abc65ca05b","title":"Softride Enzo NXT CASTLEROCK-High Risk R","quantity":173,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680399913757-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d5c24b25627a253159f","name":"Puma","slug":"puma","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286172219.png"},"ratingsAverage":2.8,"id":"6428de2adc1175abc65ca05b"},"price":2999},{"count":1,"_id":"65feadd8be8b523235841adf","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428c0fedc1175abc65c9ffd","title":"Crew Neck Long Sleeve Striped Men's Tricot Sweater","quantity":100,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680392445443-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d9e24b25627a25315a5","name":"LC Waikiki","slug":"lc-waikiki","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286238428.png"},"ratingsAverage":2,"id":"6428c0fedc1175abc65c9ffd"},"price":599},{"count":1,"_id":"65feb94fbe8b523235842c46","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428c320dc1175abc65ca008","title":"Crew Neck Long Sleeve Men's Knitwear Sweater","quantity":50,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680392991271-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d9e24b25627a25315a5","name":"LC Waikiki","slug":"lc-waikiki","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286238428.png"},"ratingsAverage":4.7,"id":"6428c320dc1175abc65ca008"},"price":449},{"count":1,"_id":"65feb954be8b523235842c53","product":{"subcategory":[{"_id":"6407f243b575d3b90bf957ac","name":"Men's Clothing","slug":"men's-clothing","category":"6439d5b90049ad0b52b90048"}],"_id":"6428dd2edc1175abc65ca055","title":"ESS Big Logo Hoodie TR Puma Black","quantity":200,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680399661234-cover.jpeg","category":{"_id":"6439d5b90049ad0b52b90048","name":"Men's Fashion","slug":"men's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"},"brand":{"_id":"64089d5c24b25627a253159f","name":"Puma","slug":"puma","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286172219.png"},"ratingsAverage":4.8,"id":"6428dd2edc1175abc65ca055"},"price":2649},{"count":1,"_id":"65feb95dbe8b523235842c80","product":{"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428e778dc1175abc65ca08a","title":"Woman Brown Long Sleeve Tunic LT.CAMEL","quantity":229,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680402295928-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.7,"id":"6428e778dc1175abc65ca08a"},"price":499},{"count":1,"_id":"65feb964be8b523235842ca0","product":{"subcategory":[{"_id":"6407f3a8b575d3b90bf957e2","name":"Laptops & Accessories","slug":"laptops-and-accessories","category":"6439d2d167d9aa4ca970649f"}],"_id":"6408de536406cd15828e8f10","title":"WH-CH510 Wireless On-Ear Bluetooth Headphones Black","quantity":600,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1678302803089-cover.jpeg","category":{"_id":"6439d2d167d9aa4ca970649f","name":"Electronics","slug":"electronics","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511121316.png"},"brand":{"_id":"64089f5824b25627a25315c7","name":"SONY","slug":"sony","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678286680638.png"},"ratingsAverage":4.3,"id":"6408de536406cd15828e8f10"},"price":1949}]
/// createdAt : "2024-03-23T06:53:54.490Z"
/// updatedAt : "2024-04-13T17:58:11.257Z"
/// __v : 14
/// totalCartPrice : 46826

class CartDataDto {
  CartDataDto({
    this.id,
    this.cartOwner,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalCartPrice,
  });

  CartDataDto.fromJson(dynamic json) {
    id = json['_id'];
    cartOwner = json['cartOwner'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(CartProductDto.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
    totalCartPrice = json['totalCartPrice'];
  }

  String? id;
  String? cartOwner;
  List<CartProductDto>? products;
  String? createdAt;
  String? updatedAt;
  num? v;
  num? totalCartPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['cartOwner'] = cartOwner;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    map['totalCartPrice'] = totalCartPrice;
    return map;
  }

  CartData toCartData() {
    return CartData(
      id: id,
      cartOwner: cartOwner,
      products: products?.map((e) => e.toCartProduct()).toList(),
      totalCartPrice: totalCartPrice,
    );
  }
}

/// count : 22
/// _id : "65fe7c82be8b52323583f1b1"
/// product : {"subcategory":[{"_id":"6407f1bcb575d3b90bf95797","name":"Women's Clothing","slug":"women's-clothing","category":"6439d58a0049ad0b52b9003f"}],"_id":"6428ebc6dc1175abc65ca0b9","title":"Woman Shawl","quantity":225,"imageCover":"https://ecommerce.routemisr.com/Route-Academy-products/1680403397402-cover.jpeg","category":{"_id":"6439d58a0049ad0b52b9003f","name":"Women's Fashion","slug":"women's-fashion","image":"https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"},"brand":{"_id":"64089bbe24b25627a253158b","name":"DeFacto","slug":"defacto","image":"https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"},"ratingsAverage":4.8,"id":"6428ebc6dc1175abc65ca0b9"}
/// price : 160

class CartProductDto {
  CartProductDto({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  CartProductDto.fromJson(dynamic json) {
    count = json['count'];
    id = json['_id'];
    product =
        json['product'] != null ? ProductDto.fromJson(json['product']) : null;
    price = json['price'];
  }

  num? count;
  String? id;
  ProductDto? product;
  num? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['_id'] = id;
    if (product != null) {
      map['product'] = product?.toJson();
    }
    map['price'] = price;
    return map;
  }

  CartProduct toCartProduct() {
    return CartProduct(
      count: count,
      id: id,
      product: product?.toProduct(),
      price: price,
    );
  }
}
