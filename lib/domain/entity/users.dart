import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  final String name;
  final bool isPro;
  final double price;
  final String avatar;

  Users(
      {required this.name,
      required this.isPro,
      required this.price,
      required this.avatar});

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
