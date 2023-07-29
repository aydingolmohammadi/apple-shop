import 'package:apple_shop/features/feature_login/domain/entity/login_entity.dart';

class LoginDto extends LoginEntity {
  LoginDto({
    String? avatar,
    String? collectionId,
    String? collectionName,
    String? created,
    bool? emailVisibility,
    String? id,
    String? name,
    String? updated,
    String? username,
    bool? verified,
  }) : super(
    avatar: avatar ?? '',
    collectionId: collectionId ?? '',
    collectionName: collectionName ?? '',
    created: created ?? '',
    emailVisibility: true,
    id: id ?? '',
    name: name ?? '',
    updated: updated ?? '',
    username: username ?? '',
    verified: true,
  );

  factory LoginDto.fromJson(Map<String, dynamic> json) => LoginDto(
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
