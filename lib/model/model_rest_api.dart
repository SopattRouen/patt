class ProductModelApi {
  //if null data protect it by ?.example int? id;
  final int id;
  final String? title;
  final String? description;
  final dynamic price;
  final String? catagery;
  final String image;
  final Ratting? ratting;

  ProductModelApi({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.catagery,
    required this.image,
    required this.ratting,
  });
  factory ProductModelApi.fromJson(Map<String, dynamic> json) {
    return ProductModelApi(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      catagery: json['catagery'],
      image: json['image'],
      ratting: json['ratting'],
    );
  }
}

class Ratting {
  final dynamic ratting;
  final int count;

  Ratting({required this.ratting, required this.count});
}
