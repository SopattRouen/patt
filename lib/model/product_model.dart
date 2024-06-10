class ProductModel {
  final String title;
  final String image;

  ProductModel({required this.title, required this.image});
  static List<ProductModel> model = [
    ProductModel(
      title: "Adidas",
      image: "images/adidas.png",
    ),
    ProductModel(
      title: "Puma",
      image: "images/puma.png",
    ),
    ProductModel(
      title: "Nike",
      image: "images/nike.png",
    ),
    ProductModel(
      title: "Gucci",
      image: "images/guci.png",
    ),
    ProductModel(
      title: "Shoe",
      image: "images/shoe.png",
    ),
    ProductModel(
      title: "Lacoste",
      image: "images/lacos.png",
    ),
  ];
}
