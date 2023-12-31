// To parse this JSON data, do
//
//     final loginEntity = loginEntityFromJson(jsonString);

import 'dart:convert';

LoginEntity loginEntityFromJson(String str) => LoginEntity.fromJson(json.decode(str));

String loginEntityToJson(LoginEntity data) => json.encode(data.toJson());

class LoginEntity {
  Record record;
  String token;

  LoginEntity({
    required this.record,
    required this.token,
  });

  factory LoginEntity.fromJson(Map<String, dynamic> json) => LoginEntity(
    record: Record.fromJson(json["record"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "record": record.toJson(),
    "token": token,
  };
}

class Record {
  String avatar;
  String collectionId;
  String collectionName;
  String created;
  String email;
  bool emailVisibility;
  String id;
  String name;
  String updated;
  String username;
  bool verified;

  Record({
    required this.avatar,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.email,
    required this.emailVisibility,
    required this.id,
    required this.name,
    required this.updated,
    required this.username,
    required this.verified,
  });

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    avatar: json["avatar"],
    collectionId: json["collectionId"],
    collectionName: json["collectionName"],
    created: json["created"],
    email: json["email"],
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
    "email": email,
    "emailVisibility": emailVisibility,
    "id": id,
    "name": name,
    "updated": updated,
    "username": username,
    "verified": verified,
  };
}
