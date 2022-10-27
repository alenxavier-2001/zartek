// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      dishId: json['dish_id'] as String?,
      dishName: json['dish_name'] as String?,
      dishPrice: (json['dish_price'] as num?)?.toDouble(),
      dishImage: json['dish_image'] as String?,
      dishCalories: (json['dish_calories'] as num?)?.toDouble(),
      dishDescription: json['dish_description'] as String?,
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'dish_id': instance.dishId,
      'dish_name': instance.dishName,
      'dish_price': instance.dishPrice,
      'dish_image': instance.dishImage,
      'dish_calories': instance.dishCalories,
      'dish_description': instance.dishDescription,
    };
