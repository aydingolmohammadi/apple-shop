// To parse this JSON data, do
//
//     final loginEntity = loginEntityFromJson(jsonString);

import 'dart:convert';

LoginEntity loginEntityFromJson(String str) => LoginEntity.fromJson(json.decode(str));

String loginEntityToJson(LoginEntity data) => json.encode(data.toJson());

class LoginEntity {
  String avatar;
  String collectionId;
  String collectionName;
  String created;
  bool emailVisibility;
  String id;
  String name;
  String updated;
  String username;
  bool verified;

  LoginEntity({
    required this.avatar,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.emailVisibility,
    required this.id,
    required this.name,
    required this.updated,
    required this.username,
    required this.verified,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity(
    avatar: json["avatar"],
    collectionId: json["collectionId"],
    collectionName: json["collectionName"],
    created: json["created"],
    emailVisibility: json["emailVisibility"],
    id: json["id"],
    name: json["name"],
    updated: json["updated"],
    username: json["username"],
    verified: json["verified"],
  );

  Map<String, dynamic> toJson() => {
    "avatar": avatar,
    "collectionId": collectionId,
    "collectionName": collectionName,
    "created": created,
    "emailVisibility": emailVisibility,
    "id": id,
    "name": name,
    "updated": updated,
    "username": username,
    "verified": verified,
  };
}
