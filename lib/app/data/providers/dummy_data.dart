import 'package:e_commerse_app/app/data/models/address_model.dart';
import 'package:e_commerse_app/app/data/models/deal_model.dart';
import 'package:e_commerse_app/app/data/models/offer_model.dart';

import '../../core/values/app_icons.dart';
import '../models/cart_item_model.dart';
import '../models/category_model.dart';

class DummyData {
  DummyData._();

  /// lists
  static List<CartItemModel> cartItems = [
    CartItemModel(
        name: 'Turkish Steak',
        description: '173 Grams',
        price: 21,
        quantity: 0),
    CartItemModel(
        name: 'Salmon', description: '2 Serving', price: 12.5, quantity: 0),
    CartItemModel(
        name: 'Red Juice', description: '1 Bottle', price: 20.5, quantity: 0),
  ];
  static List<AddressModel> addressItems = [
    AddressModel(
      id: 1,
      name: 'Home Address',
      description: 'Mustafa St. No:2 Street x12 ',
    ),
    AddressModel(
      id: 1,
      name: 'Office Address',
      description: 'Axis Istanbul, B2 Blok Floor 2, Office 11',
    ),
  ];
  static List<OfferModel> offerItems = [
    OfferModel(
        id: 1,
        description: '* Available until 24 December 2020',
        oldPrice: 18,
        newPrice: 12,
        image: AppIcons.companyIcon),
    OfferModel(
        id: 2,
        description: '* Available until 5 october 2020',
        oldPrice: 40,
        newPrice: 32,
        image: AppIcons.companyIcon)
  ];
  static List<DealModel> dealItems = [
    DealModel(
      id: 1,
      name: 'Summer Sun Ice Cream Pack',
      newPrice: 25,
      oldPrice: 29,
      location: '15 Minutes Away',
      description: 'Pieces 5',
    ),
    DealModel(
      id: 1,
      name: 'Coffee',
      newPrice: 8,
      oldPrice: 12,
      location: '5 Minutes Away',
      description: 'Pieces 3',
    ),
  ];
  static List<CategoryModel> categoryItems = [
    CategoryModel(id: 1, name: 'Steak'),
    CategoryModel(id: 2, name: 'Vegetables'),
    CategoryModel(id: 3, name: 'Beverages'),
    CategoryModel(id: 4, name: 'Fish'),
    CategoryModel(id: 1, name: 'Juice'),
  ];

  /// values
  static String userAddress1 = 'Mustafa St.';
  static String userAddress2 = 'Oxford Street';
}
