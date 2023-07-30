// To parse this JSON data, do
//
//     final loginParam = loginParamFromJson(jsonString);

import 'dart:convert';

SignUpParam loginParamFromJson(String str) => SignUpParam.fromJson(json.decode(str));

String loginParamToJson(SignUpParam data) => json.encode(data.toJson());

class SignUpParam {
  String username;
  String password;
  String passwordConfirm;

  SignUpParam({
    required this.username,
    required this.password,
    required this.passwordConfirm,
  });

  factory SignUpParam.fromJson(Map<String, dynamic> json) => SignUpParam(
    username: json["username"],
    password: json["password"],
    passwordConfirm: json["passwordConfirm"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "passwordConfirm": passwordConfirm,
  };
}
