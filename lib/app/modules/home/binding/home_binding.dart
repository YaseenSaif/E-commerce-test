import 'package:e_commerse_app/app/modules/cart_tap/controllers/cart_controller.dart';
import 'package:e_commerse_app/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../grocery_tap/controllers/grocery_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => GroceryController());
    Get.lazyPut(() => CartController());
  }
}
