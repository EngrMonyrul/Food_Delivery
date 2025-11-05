// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'centralize_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CentralizeLogin _$CentralizeLoginFromJson(
  Map<String, dynamic> json,
) => CentralizeLogin(
  manualLoginStatus: (json['manual_login_status'] as num?)?.toInt(),
  otpLoginStatus: (json['otp_login_status'] as num?)?.toInt(),
  socialLoginStatus: (json['social_login_status'] as num?)?.toInt(),
  googleLoginStatus: (json['google_login_status'] as num?)?.toInt(),
  facebookLoginStatus: (json['facebook_login_status'] as num?)?.toInt(),
  appleLoginStatus: (json['apple_login_status'] as num?)?.toInt(),
  emailVerificationStatus: (json['email_verification_status'] as num?)?.toInt(),
  phoneVerificationStatus: (json['phone_verification_status'] as num?)?.toInt(),
);

Map<String, dynamic> _$CentralizeLoginToJson(CentralizeLogin instance) =>
    <String, dynamic>{
      'manual_login_status': instance.manualLoginStatus,
      'otp_login_status': instance.otpLoginStatus,
      'social_login_status': instance.socialLoginStatus,
      'google_login_status': instance.googleLoginStatus,
      'facebook_login_status': instance.facebookLoginStatus,
      'apple_login_status': instance.appleLoginStatus,
      'email_verification_status': instance.emailVerificationStatus,
      'phone_verification_status': instance.phoneVerificationStatus,
    };
