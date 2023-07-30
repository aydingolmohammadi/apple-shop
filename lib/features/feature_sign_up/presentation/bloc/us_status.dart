import 'package:apple_shop/features/feature_sign_up/domain/entity/sign_up_entity.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UsStatus {}

class UsLoading extends UsStatus {}

class UsCompleted extends UsStatus {
  final SignUpEntity signUpEntity;

  UsCompleted(this.signUpEntity);
}

class UsError extends UsStatus {
  final String message;

  UsError(this.message);
}
