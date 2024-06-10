class ModelAdidas {
  final String images;
  final String title;
  final double price;
  final String des;

  ModelAdidas(
      {required this.images,
      required this.title,
      required this.price,
      required this.des});
  static List<ModelAdidas> model = [
    ModelAdidas(
      images:
          "https://i.pinimg.com/236x/e3/7e/ef/e37eef52c4253a0140d1be0eaaac0456.jpg",
      title: "adidas ",
      price: 12.5,
      des: "the best cloth of the year",
    ),
    ModelAdidas(
      images:
          "https://i.pinimg.com/564x/fa/4f/fb/fa4ffbb126a2fe848888090ba35b992a.jpg",
      title: "Tech Fit Seasonal T-Shirt",
      price: 15,
      des:
          "adidas Techfit PowerWeb Short Sleeve Compression Running T-Shirt - XX Large Black: Free UK Shipping on Orders Over £10 and Free 30-Day Returns on Selected Fashion Items sold or fulfilled by Amazon.",
    ),
    ModelAdidas(
      images:
          "https://i.pinimg.com/564x/72/0c/c0/720cc07c87d84dc7ebab017974603fd0.jpg",
      title: "Adidas Originals Jacket",
      price: 7,
      des: "",
    ),
    ModelAdidas(
      images:
          "https://i.pinimg.com/564x/21/34/a4/2134a4273b125b3fd5e428c8a017339f.jpg",
      title: "HERMOSO",
      price: 12,
      des: "",
    ),
    ModelAdidas(
      images:
          "https://i.pinimg.com/736x/3a/42/65/3a4265bd54bd722997fb530680e759ee.jpg",
      title: "Newest Collaboration",
      price: 8,
      des:
          "Including a preview of two footwear models designed with boost technology.",
    ),
    ModelAdidas(
      images:
          "https://i.pinimg.com/236x/e7/c2/a7/e7c2a74e2a49b2c9b28c6aa73deebdc6.jpg",
      title: "T-SHIRT INFANT BIG LOGO",
      price: 12,
      des:
          "T-SHIRT BIG TREFOIL UNA SILHOUETTE ADIDAS CHE STRIZZA L'OCCHIO ALLA STORIA DEL BRAND. Fin dal 1972",
    ),
    ModelAdidas(
      images:
          "https://i.pinimg.com/564x/a9/ea/49/a9ea49e6f16150b0048c8549a4ace575.jpg",
      title: "Youth Pants (Age 8-16)",
      price: 14,
      des:
          "Shop adidas Youth Pants (Age 8-16) at adidas.com. Browse all products, from shoes to clothing and accessories in this collection",
    ),
  ];
}
