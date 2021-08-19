import 'dart:convert';

class User {
  final String name, email, address;
  User(this.name, this.email, this.address);
}

UserModel userModelFromJSON(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String name;
  String email;
  String address;
  String id;
  DateTime createdAd;

  UserModel({
    required this.name,
    required this.email,
    required this.address,
    required this.id,
    required this.createdAd,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        email: json["email"],
        address: json["address"],
        id: json["id"],
        createdAd: DateTime.parse(json["createdAd"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "address": address,
        "id": id,
        "createdAt": createdAd.toIso8601String(),
      };
}
