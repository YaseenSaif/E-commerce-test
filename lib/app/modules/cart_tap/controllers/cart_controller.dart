import 'package:e_commerse_app/app/data/models/cart_item_model.dart';
import 'package:get/get.dart';

import '../../../data/providers/dummy_data.dart';

class CartController extends GetxController {
  /// variables
  double totalPrice = 0;
  List<CartItemModel> items = DummyData.cartItems;

  String userAddress = DummyData.userAddress2;

  /// processing methods
  void calculateTotalPrice({required int index, required bool isAdding}) {
    if (isAdding) {
      totalPrice += items[index].price ?? 0;
      items[index].quantity = (items[index].quantity ?? 1) + 1;
      update(['cartItem', 'totalPrice']);
    } else {
      if ((items[index].quantity ?? 0) <= 0) return;
      totalPrice -= items[index].price ?? 0;
      items[index].quantity = (items[index].quantity ?? 1) - 1;
      update(['cartItem', 'totalPrice']);
    }
  }
}
