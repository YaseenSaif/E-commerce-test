import 'dart:convert';

class DealModel {
  DealModel({
    this.id,
    this.name,
    this.description,
    this.location,
    this.image,
    this.isFavorite = false,
    this.newPrice,
    this.oldPrice,
  });

  int? id;
  String? name;
  String? description;
  String? location;
  double? newPrice;
  bool? isFavorite;
  double? oldPrice;
  String? image;

  factory DealModel.fromJson(String str) => DealModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DealModel.fromMap(Map<String, dynamic> json) => DealModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        isFavorite: json["is_favorite"],
        newPrice: json["new_price"],
        oldPrice: json["old_price"],
        location: json["location"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "is_favorite": isFavorite,
        "new_price": newPrice,
        "old_price": oldPrice,
        "location": location,
      };
}
