// To parse this JSON data, do
//
//     final loginEntity = loginEntityFromJson(jsonString);

import 'dart:convert';

SignUpEntity loginEntityFromJson(String str) => SignUpEntity.fromJson(json.decode(str));

String loginEntityToJson(SignUpEntity data) => json.encode(data.toJson());

class SignUpEntity {
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

  SignUpEntity({
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

  factory SignUpEntity.fromJson(Map<String, dynamic> json) => SignUpEntity(
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
