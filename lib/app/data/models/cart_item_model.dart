import 'dart:convert';

class CartItemModel {
  CartItemModel({
    this.id,
    this.name,
    this.description,
    this.image,
    this.price,
    this.quantity,
  });

  int? id;
  String? name;
  String? description;
  double? price;
  int? quantity;
  String? image;

  factory CartItemModel.fromJson(String str) =>
      CartItemModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CartItemModel.fromMap(Map<String, dynamic> json) => CartItemModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "price": price,
        "quantity": quantity,
      };
}
