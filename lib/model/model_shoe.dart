class ModelShoes {
  final String images;
  final double price;

  ModelShoes({required this.images, required this.price});
  static List<ModelShoes> modelShoes = [
    ModelShoes(
      images: "images/shoe1.jpg",
      price: 89.20,
    ),
    ModelShoes(
      images: "images/shoe2.jpg",
      price: 72.20,
    ),
    ModelShoes(
      images: "images/shoe3.jpg",
      price: 32.20,
    ),
    ModelShoes(
      images: "images/shoe4.jpg",
      price: 23.20,
    ),
    ModelShoes(
      images: "images/shoe5.jpg",
      price: 9.20,
    ),
    ModelShoes(
      images: "images/shoe6.jpg",
      price: 92.20,
    ),
    ModelShoes(
      images: "images/shoe7.jpg",
      price: 23.20,
    ),
    ModelShoes(
      images: "images/shoe8.jpg",
      price: 18,
    ),
    ModelShoes(
      images: "images/shoe9.jpg",
      price: 45.90,
    ),
    ModelShoes(
      images: "images/shoe10.jpg",
      price: 60,
    ),
  ];
}
