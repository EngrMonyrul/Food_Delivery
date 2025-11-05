// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialLogin _$SocialLoginFromJson(Map<String, dynamic> json) => SocialLogin(
  loginMedium: json['login_medium'] as String?,
  status: json['status'] as bool?,
);

Map<String, dynamic> _$SocialLoginToJson(SocialLogin instance) =>
    <String, dynamic>{
      'login_medium': instance.loginMedium,
      'status': instance.status,
    };
