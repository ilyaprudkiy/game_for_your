// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      name: json['name'] as String,
      isPro: json['isPro'] as bool,
      price: (json['price'] as num).toDouble(),
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'name': instance.name,
      'isPro': instance.isPro,
      'price': instance.price,
      'avatar': instance.avatar,
    };
