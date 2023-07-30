import 'package:apple_shop/features/feature_sign_up/domain/entity/sign_up_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UlStatus {}

class UlLoading extends UlStatus {}

class UlCompleted extends UlStatus {
  final SignUpEntity signUpEntity;

  UlCompleted(this.signUpEntity);
}

class UlError extends UlStatus {
  final String message;

  UlError(this.message);
}
