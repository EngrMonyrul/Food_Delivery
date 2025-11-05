// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppleLogin _$AppleLoginFromJson(Map<String, dynamic> json) => AppleLogin(
  loginMedium: json['login_medium'] as String?,
  status: json['status'] as bool?,
  clientId: json['client_id'] as String?,
);

Map<String, dynamic> _$AppleLoginToJson(AppleLogin instance) =>
    <String, dynamic>{
      'login_medium': instance.loginMedium,
      'status': instance.status,
      'client_id': instance.clientId,
    };
