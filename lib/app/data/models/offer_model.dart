import 'dart:convert';

class OfferModel {
  OfferModel({
    this.id,
    this.image,
    this.description,
    this.newPrice,
    this.oldPrice,
  });

  int? id;
  String? description;
  String? image;
  double? newPrice;
  double? oldPrice;

  factory OfferModel.fromJson(String str) =>
      OfferModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OfferModel.fromMap(Map<String, dynamic> json) => OfferModel(
        id: json["id"],
        description: json["description"],
        image: json["image"],
        newPrice: json["new_price"],
        oldPrice: json["old_price"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "description": description,
        "image": image,
        "new_price": newPrice,
        "old_price": oldPrice,
      };
}
