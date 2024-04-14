/// status : "success"
/// message : "Product added successfully to your cart"
/// numOfCartItems : 15
/// data : {"_id":"65fe7c82be8b52323583f1b0","cartOwner":"65fe6ff1be8b52323583e92b","products":[{"count":22,"_id":"65fe7c82be8b52323583f1b1","product":"6428ebc6dc1175abc65ca0b9","price":160},{"count":17,"_id":"65fe9528be8b5232358404e8","product":"6428eb43dc1175abc65ca0b3","price":149},{"count":6,"_id":"65fe9531be8b5232358404f5","product":"6428ead5dc1175abc65ca0ad","price":149},{"count":6,"_id":"65fe96a3be8b523235840658","product":"6428e997dc1175abc65ca0a1","price":149},{"count":2,"_id":"65fe96a7be8b523235840665","product":"6428e884dc1175abc65ca096","price":349},{"count":3,"_id":"65fe9a32be8b523235840a2c","product":"6428e7ecdc1175abc65ca090","price":499},{"count":2,"_id":"65fea795be8b52323584118d","product":"6428ce55dc1175abc65ca043","price":3159},{"count":1,"_id":"65fea8d4be8b5232358412a2","product":"6428c5b7dc1175abc65ca019","price":1629},{"count":1,"_id":"65fea965be8b5232358413fc","product":"6408e43a6406cd15828e8f22","price":19699},{"count":1,"_id":"65feabfebe8b52323584180f","product":"6428de2adc1175abc65ca05b","price":2999},{"count":1,"_id":"65feadd8be8b523235841adf","product":"6428c0fedc1175abc65c9ffd","price":599},{"count":1,"_id":"65feb94fbe8b523235842c46","product":"6428c320dc1175abc65ca008","price":449},{"count":1,"_id":"65feb954be8b523235842c53","product":"6428dd2edc1175abc65ca055","price":2649},{"count":1,"_id":"65feb95dbe8b523235842c80","product":"6428e778dc1175abc65ca08a","price":499},{"count":1,"_id":"65feb964be8b523235842ca0","product":"6408de536406cd15828e8f10","price":1949}],"createdAt":"2024-03-23T06:53:54.490Z","updatedAt":"2024-04-13T17:58:11.257Z","__v":14,"totalCartPrice":46826}

class AddToCart {
  AddToCart({
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

/// _id : "65fe7c82be8b52323583f1b0"
/// cartOwner : "65fe6ff1be8b52323583e92b"
/// products : [{"count":22,"_id":"65fe7c82be8b52323583f1b1","product":"6428ebc6dc1175abc65ca0b9","price":160},{"count":17,"_id":"65fe9528be8b5232358404e8","product":"6428eb43dc1175abc65ca0b3","price":149},{"count":6,"_id":"65fe9531be8b5232358404f5","product":"6428ead5dc1175abc65ca0ad","price":149},{"count":6,"_id":"65fe96a3be8b523235840658","product":"6428e997dc1175abc65ca0a1","price":149},{"count":2,"_id":"65fe96a7be8b523235840665","product":"6428e884dc1175abc65ca096","price":349},{"count":3,"_id":"65fe9a32be8b523235840a2c","product":"6428e7ecdc1175abc65ca090","price":499},{"count":2,"_id":"65fea795be8b52323584118d","product":"6428ce55dc1175abc65ca043","price":3159},{"count":1,"_id":"65fea8d4be8b5232358412a2","product":"6428c5b7dc1175abc65ca019","price":1629},{"count":1,"_id":"65fea965be8b5232358413fc","product":"6408e43a6406cd15828e8f22","price":19699},{"count":1,"_id":"65feabfebe8b52323584180f","product":"6428de2adc1175abc65ca05b","price":2999},{"count":1,"_id":"65feadd8be8b523235841adf","product":"6428c0fedc1175abc65c9ffd","price":599},{"count":1,"_id":"65feb94fbe8b523235842c46","product":"6428c320dc1175abc65ca008","price":449},{"count":1,"_id":"65feb954be8b523235842c53","product":"6428dd2edc1175abc65ca055","price":2649},{"count":1,"_id":"65feb95dbe8b523235842c80","product":"6428e778dc1175abc65ca08a","price":499},{"count":1,"_id":"65feb964be8b523235842ca0","product":"6408de536406cd15828e8f10","price":1949}]
/// createdAt : "2024-03-23T06:53:54.490Z"
/// updatedAt : "2024-04-13T17:58:11.257Z"
/// __v : 14
/// totalCartPrice : 46826

class AddData {
  AddData({
    this.id,
    this.cartOwner,
    this.products,
    this.totalCartPrice,
  });

  String? id;
  String? cartOwner;
  List<AddProduct>? products;
  num? totalCartPrice;
}

/// count : 22
/// _id : "65fe7c82be8b52323583f1b1"
/// product : "6428ebc6dc1175abc65ca0b9"
/// price : 160

class AddProduct {
  AddProduct({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  num? count;
  String? id;
  String? product;
  num? price;
}
