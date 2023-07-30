import '../../domain/entity/sign_up_entity.dart';

class SignUpDto extends SignUpEntity {
  SignUpDto({
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

  factory SignUpDto.fromJson(Map<String, dynamic> json) => SignUpDto(
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
