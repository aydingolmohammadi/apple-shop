import 'package:apple_shop/features/feature_login/domain/entity/login_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UlStatus {}

class UlInit extends UlStatus {}

class UlLoading extends UlStatus {}

class UlCompleted extends UlStatus {
  final LoginEntity loginEntity;

  UlCompleted(this.loginEntity);
}

class UlError extends UlStatus {
  final String message;

  UlError(this.message);
}
