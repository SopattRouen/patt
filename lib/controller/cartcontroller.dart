import 'package:get/get.dart';
import 'package:multiflex_store_01/model/model_cloth.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addProduct(ModelCloth modelCloth) {
    if (_products.containsKey(modelCloth)) {
      _products[modelCloth] += 1;
    } else {
      _products[modelCloth] = 1;
    }
    Get.snackbar(
      "Multiflex",
      "You have added a product ${modelCloth.price} to the cart",
      duration: Duration(seconds: 1),
    );
  }

  get modelCloth => _products;
  void remove(ModelCloth modelCloth) {
    if (_products.containsKey(modelCloth) && _products[modelCloth] == 1) {
      _products.removeWhere((key, value) => key == modelCloth);
    } else {
      _products[modelCloth] -= 1;
    }
  }

  get productsubtotal => _products.entries
      .map((productModel) => productModel.key.price * productModel.value)
      .toList();
  get total => _products.entries
      .map((productModel) => productModel.key.price * productModel.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
