import 'package:e_commerse_app/app/data/models/address_model.dart';
import 'package:e_commerse_app/app/data/models/category_model.dart';
import 'package:e_commerse_app/app/data/models/deal_model.dart';
import 'package:e_commerse_app/app/data/models/offer_model.dart';
import 'package:get/get.dart';

import '../../../data/providers/dummy_data.dart';

class GroceryController extends GetxController {
  /// variables
  List<AddressModel> addressItems = DummyData.addressItems;
  List<CategoryModel> categoryItems = DummyData.categoryItems;
  List<DealModel> dealItems = DummyData.dealItems;
  List<OfferModel> offerItems = DummyData.offerItems;
  String userAddress = DummyData.userAddress1;

  /// processing methods
  void setFavorite(int index) {
    if (dealItems[index].isFavorite ?? false) {
      dealItems[index].isFavorite = false;
    } else {
      dealItems[index].isFavorite = true;
    }
    update(['favorite']);
  }
}
