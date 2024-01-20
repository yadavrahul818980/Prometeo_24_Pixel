class category_trends_model {
  String? sId;
  String? price;
  String? details;
  String? category;
  String? productName;
  String? productImage;

  category_trends_model(
      {this.sId,
      this.price,
      this.details,
      this.category,
      this.productName,
      this.productImage});

  category_trends_model.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    price = json['price'];
    details = json['details'];
    category = json['category'];
    productName = json['productName'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['price'] = this.price;
    data['details'] = this.details;
    data['category'] = this.category;
    data['productName'] = this.productName;
    data['productImage'] = this.productImage;
    return data;
  }
}
