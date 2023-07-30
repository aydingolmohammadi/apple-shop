import '../../domain/entity/login_entity.dart';

class LoginDto extends LoginEntity {
  LoginDto({
    String? token,
    Record? record,
  }) : super(
          token: token ?? '',
          record: record ??
              Record(
                avatar: '',
                collectionId: '',
                collectionName: '',
                created: '',
                email: '',
                emailVisibility: true,
                id: '',
                name: '',
                updated: '',
                username: '',
                verified: true,
              ),
        );

  factory LoginDto.fromJson(Map<String, dynamic> json) => LoginDto(
        token: json["token"],
        record: Record.fromJson(json["record"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "record": record.toJson(),
      };
}
