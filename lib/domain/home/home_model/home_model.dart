import 'package:json_annotation/json_annotation.dart';

import 'addon_cat.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'dish_id')
  String? dishId;
  @JsonKey(name: 'dish_name')
  String? dishName;
  @JsonKey(name: 'dish_price')
  double? dishPrice;
  @JsonKey(name: 'dish_image')
  String? dishImage;

  @JsonKey(name: 'dish_calories')
  double? dishCalories;
  @JsonKey(name: 'dish_description')
  String? dishDescription;

  //List<AddonCat>? addonCat;

  HomeModel({
    this.dishId,
    this.dishName,
    this.dishPrice,
    this.dishImage,
    this.dishCalories,
    this.dishDescription,
    //this.addonCat,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
