// To parse this JSON data, do
//
//     final loginParam = loginParamFromJson(jsonString);

import 'dart:convert';

LoginParam loginParamFromJson(String str) => LoginParam.fromJson(json.decode(str));

String loginParamToJson(LoginParam data) => json.encode(data.toJson());

class LoginParam {
  String identity;
  String password;

  LoginParam({
    required this.identity,
    required this.password,
  });

  factory LoginParam.fromJson(Map<String, dynamic> json) => LoginParam(
    identity: json["identity"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "identity": identity,
    "password": password,
  };
}
