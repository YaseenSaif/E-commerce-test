import 'package:e_commerse_app/app/modules/grocery_tap/controllers/grocery_controller.dart';
import 'package:get/get.dart';

class GroceryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroceryController());
  }
}
